class GenericResponse<T> {
  final bool success;
  final T? data;

  GenericResponse({
    this.success = true,
    this.data,
  });

  // Método de fábrica para criar uma instância a partir de um JSON.
  factory GenericResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) {
    return GenericResponse(
      success: json['success'] as bool? ?? true,
      data: json['data'] != null ? fromJsonT(json['data']) : null,
    );
  }

  // Método para converter a instância em um JSON.
  Map<String, dynamic> toJson(
      Object Function(T) toJsonT,
      ) {
    return {
      'success': success,
      'data': data != null ? toJsonT(data as T) : null,
    };
  }
}
