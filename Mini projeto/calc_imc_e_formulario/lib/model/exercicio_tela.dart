import 'package:flutter/material.dart';

class ExercicioTela extends StatelessWidget {
  const ExercicioTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application"),
        backgroundColor: Colors.grey,
      ),
      body: Padding( 
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Personal info',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'First name'),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Last name'),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Birthday'),
                  ),
                ),
                SizedBox(width: 16), 
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Social security'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Residence address',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: 'Address'),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: "City"),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(labelText: 'State'),
                    value: null, 
                    items: [
                      'State 1',
                      'State 2',
                      'State 3',
                    ].map((state) => DropdownMenuItem(
                      value: state,
                      child: Text(state),
                    )).toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(labelText: "ZIP Code"),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(labelText: 'Country'),
                    value: null, 
                    items: [
                      'Country 1',
                      'Country 2',
                      'Country 3',
                    ].map((state) => DropdownMenuItem(
                      value: state,
                      child: Text(state),
                    )).toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
