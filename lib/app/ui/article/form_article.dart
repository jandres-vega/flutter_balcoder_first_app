import 'package:flutter/material.dart';

import '../../utils/mixins/text_form_validate.dart';
import '../../utils/widget/custom_field_text.dart';
import '../../utils/widget/snack_bar.dart';

class FormArticle extends StatefulWidget {
  const FormArticle({super.key});

  @override
  State<StatefulWidget> createState() => _FormArticleState();
}

class _FormArticleState extends State<FormArticle> with TextFormValidate {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Text('Registrar artículo'),
          const SizedBox(height: 20),
          CustomFieldText(
            controller: _titleController,
            keyboardType: TextInputType.text,
            label: 'Titulo',
            hint: 'Ingresa el titulo',
            icon: Icons.title,
            validator: validateRequired,
          ),
          const SizedBox(height: 20),
          CustomFieldText(
            controller: _descriptionController,
            keyboardType: TextInputType.text,
            label: 'Subtitulo',
            hint: 'Ingresa el subtitulo',
            icon: Icons.description,
          ),
          const SizedBox(height: 20),
          CustomFieldText(
            controller: _contentController,
            keyboardType: TextInputType.text,
            label: 'Descripción',
            hint: 'Ingresa la descripción',
            icon: Icons.description,
            validator: validateRequired,
          ),
          const SizedBox(height: 20),
          CustomFieldText(
            controller: _imageController,
            keyboardType: TextInputType.text,
            label: 'Image',
            hint: 'Ingresa la imagen',
            icon: Icons.image,
            validator: validateRequired,
          ),
          const SizedBox(height: 20),
          CustomFieldText(
            controller: _urlController,
            keyboardType: TextInputType.text,
            label: 'Url articulo',
            hint: 'Ingresa URL',
            icon: Icons.web_asset,
            validator: validateRequired,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showSnackBar(context, 'Article created');
                }
              },
              child: const Text('Crear articulo'),
            ),
          ),
        ],
      )
    );
  }
}