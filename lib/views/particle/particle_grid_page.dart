import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:standard_model/components/particle_list_tile.dart';
import 'package:standard_model/core/const/colors.dart';
import 'package:standard_model/data/repository.dart';
import 'package:standard_model/models/particle.dart';
import 'package:standard_model/router/app_router.gr.dart';
import 'package:standard_model/views/particle/particle_grid.dart';

class ParticleGridPage extends StatelessWidget {
  ParticleGridPage({Key? key}) : super(key: key);

  final Repository repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              primary: AppColors.lightPurple,
                            ),
                            child: Text(
                              "QURAKS",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ParticleGrid(
                        items: repository.getParticlesByPower(Power.quarks),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              primary: AppColors.lightGreen,
                            ),
                            child: Text(
                              "LEPTONS",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ParticleGrid(
                        items: repository.getParticlesByPower(Power.lepton),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AspectRatio(
              aspectRatio: 1 / 4,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  final item =
                      repository.getParticlesByPower(Power.gaugeBosons)[index];
                  return Hero(
                    tag: item.id.toString(),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ParticleView(
                          item: item,
                          gradientColor: getPowerColor(item.power),
                          borderWidth: 7.5,
                          borderRadius: 40,
                          onTap: () {
                            AutoRouter.of(context).push(
                              ParticleDetailsRoute(id: item.id),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            AspectRatio(
              aspectRatio: 1 / 4,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Hero(
                    tag: repository.getParticleById(29).id.toString(),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ParticleView(
                          item: repository.getParticleById(29),
                          gradientColor: getPowerColor(
                              repository.getParticleById(29).power),
                          borderWidth: 7.5,
                          borderRadius: 40,
                          onTap: () {
                            AutoRouter.of(context).push(
                              ParticleDetailsRoute(
                                  id: repository.getParticleById(29).id),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    primary: AppColors.sunglo,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "GAUGE BOSONS",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "VECTOR BOSONS",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child:TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  primary: AppColors.ronchi,
                                ),
                                child: Text(
                                  "SCALARS BOSONS",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AspectRatio(
              aspectRatio: 1 / 4,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Hero(
                    tag: repository.getParticleById(30).id.toString(),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ParticleView(
                          item: repository.getParticleById(30),
                          gradientColor: getPowerColor(
                              repository.getParticleById(30).power),
                          borderWidth: 7.5,
                          borderRadius: 40,
                          onTap: () {
                            AutoRouter.of(context).push(
                              ParticleDetailsRoute(
                                  id: repository.getParticleById(30).id),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: AppColors.blue,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "HYPOTHETICAL",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "TENSOR BOSONS",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
