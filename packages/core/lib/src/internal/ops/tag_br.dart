part of '../core_ops.dart';

class TagBr {
  final WidgetFactory wf;

  TagBr(this.wf);

  BuildOp get buildOp => BuildOp(onTree: (tree) => tree.append(TagBrBit(tree)));
}

class TagBrBit extends BuildBit {
  const TagBrBit(BuildTree? parent) : super(parent);

  @override
  bool get swallowWhitespace => true;

  @override
  BuildBit copyWith({BuildTree? parent}) => TagBrBit(parent ?? this.parent);

  @override
  void flatten(Flattened f) => f.write(text: '\n');

  @override
  String toString() => '<BR />';
}
