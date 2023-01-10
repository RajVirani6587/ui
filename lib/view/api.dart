import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/provider/api_class.dart';

class Api_Screen extends StatefulWidget {
  const Api_Screen({Key? key}) : super(key: key);

  @override
  State<Api_Screen> createState() => _Api_ScreenState();
}

class _Api_ScreenState extends State<Api_Screen> {
  api_provider?api_providerT;
  api_provider?api_providerF;
  @override
  Widget build(BuildContext context) {
    api_providerT =Provider.of<api_provider>(context,listen: true);
    api_providerF = Provider.of<api_provider>(context,listen: false);
    return SafeArea(
        child: Scaffold(
          body: FutureBuilder<List>(
            future: api_providerF!.apifactory(),
            builder: (context,snapshot){
              if(snapshot.hasError)
                {
                  return Text("${snapshot.error}");
                }
              else if(snapshot.hasData)
                {
                  List l1 = snapshot.data!;
                  return ListView.builder(
                      itemCount: api_providerT!.mainList.length,
                      itemBuilder:(context,index){
                        return ListTile(
                          title: Text("${api_providerT!.mainList[index].price}"),
                        );
                      }
                  );
                }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        )
    );
  }
}
