import MetalPerformanceShadersGraph

extension MPSGraph {
    /// https://github.com/onnx/onnx/blob/main/docs/Operators.md#DynamicQuantizeLinear
    func dynamicQuantizeLinear(
        _ node: Onnx_NodeProto,
        _ tensors: [String: MPSGraphTensor],
        _ constants: [String: Onnx_TensorProto]
    ) throws -> MPSGraphTensor {
        guard let x = tensors(node.input(0))
        else { throw OnnxError.invalidInput(node.name) }
        return x
    }
}
