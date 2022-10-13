(* ::Package:: *)

BeginPackage["PeterBurbery`CoreLanguageAndStructureFunctionality`"];

(* Declare your packages public symbols here. *)

Arity;

Begin["`Private`"];

(* Define your public and private symbols here. *)
Arity//ClearAll;
Arity[f_]:=With[{argumentsPattern="ArgumentsPattern"/. SyntaxInformation[f]},
With[{tentativeMax=Count[argumentsPattern,Except[Alternatives@@Verbatim/@{___,OptionsPattern[]}]]}
,{tentativeMax-Count[argumentsPattern,Verbatim[_.]],
If[MemberQ[argumentsPattern,Verbatim[__]|Verbatim[___]],Infinity,tentativeMax]}]];

End[]; (* End `Private` *)

EndPackage[];
