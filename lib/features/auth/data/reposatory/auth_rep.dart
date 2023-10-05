import 'package:cheif_app/core/database/api/api_consumer.dart';
import 'package:cheif_app/core/database/api/end_points.dart';
import 'package:cheif_app/core/error/exceptions.dart';
import 'package:cheif_app/core/services/service.dart';
import 'package:cheif_app/features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';

class AuthRepository {
  Future<Either<String, LoginModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await sl<ApiConsumer>().post(EndPoint.chefSignIn,
          data: {ApiKey.email: 'email', ApiKey.password: 'password'});
      return Right(LoginModel.fromJson(response));
    } on ServerException catch (error) {
      return Left(error.errorModel.errorMessage);
    }
  }
}
