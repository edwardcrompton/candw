<?php

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function candw_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
}

function candw_install_tasks() {
    $tasks = array();
    
    $tasks['fbconnect_settings'] = array(
	  'display_name' => st('Set up a connection to Facebook'),
	  'display' => TRUE,
	  'type' => 'form',
	  'run' => INSTALL_TASK_RUN_IF_NOT_COMPLETED,
	  'function' => 'candw_fbconnect_api_keys_settings',
    );

    return $tasks;
}



function candw_fbconnect_api_keys_settings($form, &$form_state) {
  $form['fbconnect_appid'] = array(
    '#type' => 'textfield',
    '#required' => TRUE,
    '#title' => t('Application ID'),
    '#default_value' => variable_get('fbconnect_appid', NULL),
    '#description' => t('Also called the <em>OAuth client_id</em> value on Facebook App settings pages. <a href="https://www.facebook.com/developers/createapp.php">Facebook Apps must first be created</a> before they can be added here.'),
  );

  $form['fbconnect_skey'] = array(
    '#type' => 'textfield',
    '#required' => TRUE,
    '#title' => t('Application Secret'),
    '#default_value' => variable_get('fbconnect_skey', NULL),
    '#description' => t('Also called the <em>OAuth client_secret</em> value on Facebook App settings pages.'),
  );

  $form['fbconnect_language_code'] = array(
    '#type' => 'textfield',
    '#title' => (module_exists('i18n')) ? t('Default language code') : t('Language code'),
    '#description' => t('Enter your country code here to get translated versions of facebook connect. (e.g. en_US or de_DE)'),
    '#default_value' => variable_get('fbconnect_language_code', 'en_US'),
  );

  if (module_exists('i18n')) {
    $form['language_codes'] = array(
      '#type'          => 'fieldset',
      '#title'         => t('Automatically Switch Language Code'),
      '#description'   => t('Enable the fbconnect module to use a different language code for each of your site languages.'),
      '#collapsible'   => TRUE,
      '#collapsed'     => TRUE,
    );

    foreach (language_list() as $langcode => $language) {
      $form['language_codes']['fbconnect_language_code_' . $langcode] = array(
        '#type'          => 'select',
        '#title'         => t('@name (@native) Language code', array('@name' => $language->name, '@native' => $language->native)),
        '#default_value' => variable_get('fbconnect_language_code_' . $langcode, ''),
        '#options'       => array('' => t('- Use default -')) + _fbconnect_language_codes(),
      );
    }
  }

  $form['fbconnect_debug'] = array(
    '#type' => 'checkbox',
    '#title' => t('Debug mode'),
    '#default_value' => variable_get('fbconnect_debug', FALSE),
  );

  $form['fbconnect_connect_url'] = array(

   '#type' => 'textfield',
    '#title' => t('Connect url'),
    '#description' => t('Copy this value into Facebook Applications on Connect settings tab'),
    '#value' => variable_get('fbconnect_connect_url', $GLOBALS['base_url'] . '/'),
  );

  //  locale
  //  connect_logo_url
  //  about_url
  //  base_domain
  //  tos_url

  return system_settings_form($form);
}
