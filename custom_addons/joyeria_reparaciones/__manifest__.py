{
    'name': 'Reparaciones de Joyería',
    'version': '1.0',
    'summary': 'Gestión de órdenes de reparación de joyas',
    'author': 'DR',
    'category': 'Operations',
    'depends': ['base', 'product', 'sale', 'contacts','point_of_sale', 'report_xlsx','mail'],
    'data': [
        'security/joyeria_security.xml',
        'security/ir.model.access.csv',
        'views/reparacion_js.xml',
        'data/ir_sequence_data.xml',
        'data/joyeria_data.xml',
        'report/report.xml',  # ← este es el que importa
        'report/report_qrcode_template.xml',
        'report/reporte_responsable_report.xml',
        'static/src/reparacion_form.js',
        'report/reporte_reparaciones_responsable.xml',
        #'views/vendedora_qr_views.xml',
        'views/vendedora_views.xml',
        'views/trabajadores_views.xml',
        'report/reporte_reparaciones_responsable.xml',
        'report/report_actions.xml',
        'report/report_etiqueta_usuario.xml',
        'report/report_etiqueta_vendedora.xml',
        #'views/wizard_reporte_responsables.xml',
        #'views/res_users_inherit.xml',
        'views/reparacion_confirm_view.xml',

        'report/report_salida_taller_xlsx.xml',
        'report/report_sales_by_store_xlsx.xml',
        'report/report_sales_by_vendedora_xlsx.xml',

        'report/reporte_salida_taller_report_action.xml',
        'report/reporte_salida_taller_templates.xml',
        'report/report_sales_by_store.xml',
        'wizard/wizard_set_precio_oros_action.xml',
        'wizard/wizard_set_precio_oros_view.xml',
        'report/report_sales_by_store_template.xml',
        'report/report_sales_by_vendedora.xml',
        'report/report_sales_by_vendedora_template.xml',

        'report/report_monthly_rma_pos_action.xml',
        'report/report_monthly_rma_pos_template.xml',
        



        



        
        

        
    
        
    ],
    'installable': True,
    'application': True,
}

