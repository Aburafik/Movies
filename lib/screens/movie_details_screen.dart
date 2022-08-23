import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class MovieDetailsScreen extends StatelessWidget {
  MovieDetailsScreen({Key? key, this.currentIndex}) : super(key: key);

  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(left: 0, right: 0, top: 0),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://image.tmdb.org/t/p/w600_and_h900_bestv2/npOnzAbLh6VOIu3naU5QaEcTepo.jpg"),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios)),
                  ),
                  Container(
                    height: 50,
                    color: Colors.black.withOpacity(0.3),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(FeatherIcons.playCircle),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      "Description:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "jhsbvdhjfbjhdsfjdsjfdshjfgdjwbfhjdsbvjdsbfhdbsfhbdsfhbdhjbfhdfhjbdshjfshjvjds cvj cvdsjhdsfsfsfsguy")
                  ],
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Director:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "jhvguy",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Producer:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Evanc",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

// https://ghibliapi.herokuapp.com/films

//https://www.behance.net/gallery/102210827/Raters-Movie-Lovers-Network?tracking_source=search_projects%7Cmovie%20mobile%20app%20ui%20design
