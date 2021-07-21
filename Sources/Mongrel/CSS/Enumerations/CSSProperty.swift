public enum CSSProperty: CaseAccessible, Comparable {
    case alignContent(String)
    case alignItems(String)
    case alignSelf(String)
    case alignmentAdjust(String)
    case alignmentBaseline(String)
    case all(String)
    case alt(String)
    case animation(String)
    case animationDelay(String)
    case animationDirection(String)
    case animationDuration(String)
    case animationFillMode(value: String)
    case animationIterationCount(String)
    case animationName(String)
    case animationPlayState(String)
    case animationTimingFunction(String)
    case azimuth(String)
    case backfaceVisibility(String)
    case background(String)
    case backgroundAttachment(String)
    case backgroundClip(String)
    case backgroundColor(String)
    case backgroundImage(String)
    case backgroundOrigin(String)
    case backgroundPosition(String)
    case backgroundRepeat(String)
    case backgroundSize(String)
    case backgroundBlendMode(String)
    case baselineShift(String)
    case bleed(String)
    case bookmarkLabel(String)
    case bookmarkLevel(String)
    case bookmarkState(String)
    case border(String)
    case borderColor(String)
    case borderStyle(String)
    case borderWidth(String)
    case borderBottom(String)
    case borderBottomColor(String)
    case borderBottomStyle(String)
    case borderBottomWidth(String)
    case borderLeft(String)
    case borderLeftColor(String)
    case borderLeftStyle(String)
    case borderLeftWidth(String)
    case borderRight(String)
    case borderRightColor(String)
    case borderRightStyle(String)
    case borderRightWidth(String)
    case borderTop(String)
    case borderTopColor(String)
    case borderTopStyle(String)
    case borderTopWidth(String)
    case borderCollapse(String)
    case borderImage(String)
    case borderImageOutset(String)
    case borderImageRepeat(String)
    case borderImageSlice(String)
    case borderImageSource(String)
    case borderImageWidth(String)
    case borderRadius(String)
    case borderBottomLeftRadius(String)
    case borderBottomRightRadius(String)
    case borderTopLeftRadius(String)
    case borderTopRightRadius(String)
    case borderSpacing(String)
    case bottom(String)
    case boxDecorationBreak(String)
    case boxShadow(String)
    case boxSizing(String)
    case boxSnap(String)
    case breakAfter(String)
    case breakBefore(String)
    case breakInside(String)
    case bufferedRendering(String)
    case captionSide(String)
    case clear(String)
    case clearSide(String)
    case clip(String)
    case clipPath(String)
    case clipRule(String)
    case color(String)
    case colorAdjust(String)
    case colorCorrection(String)
    case colorInterpolation(String)
    case colorInterpolationFilters(String)
    case colorProfile(String)
    case colorRendering(String)
    case columnFill(String)
    case columnGap(String)
    case columnRule(String)
    case columnRuleColor(String)
    case columnRuleStyle(String)
    case columnRuleWidth(String)
    case columnSpan(String)
    case columns(String)
    case columnCount(String)
    case columnWidth(String)
    case contain(String)
    case content(String)
    case counterIncrement(String)
    case counterReset(String)
    case counterSet(String)
    case cue(String)
    case cueAfter(String)
    case cueBefore(String)
    case cursor(String)
    case direction(String)
    case display(String)
    case displayInside(String)
    case displayOutside(String)
    case displayExtras(String)
    case displayBox(String)
    case dominantBaseline(String)
    case elevation(String)
    case emptyCells(String)
    case enableBackground(String)
    case fill(String)
    case fillOpacity(String)
    case fillRule(String)
    case filter(String)
    case float(String)
    case floatDeferColumn(String)
    case floatDeferPage(String)
    case floatOffset(String)
    case floatWrap(String)
    case flowInto(String)
    case flowFrom(String)
    case flex(String)
    case flexBasis(String)
    case flexGrow(String)
    case flexShrink(String)
    case flexFlow(String)
    case flexDirection(String)
    case flexWrap(String)
    case floodColor(String)
    case floodOpacity(String)
    case font(String)
    case fontFamily(String)
    case fontSize(String)
    case fontStretch(String)
    case fontStyle(String)
    case fontWeight(String)
    case fontFeatureSettings(String)
    case fontKerning(String)
    case fontLanguageOverride(String)
    case fontSizeAdjust(String)
    case fontSynthesis(String)
    case fontVariant(String)
    case fontVariantAlternates(String)
    case fontVariantCaps(String)
    case fontVariantEastAsian(String)
    case fontVariantLigatures(String)
    case fontVariantNumeric(String)
    case fontVariantPosition(String)
    case footnotePolicy(String)
    case glyphOrientationHorizontal(String)
    case glyphOrientationVertical(String)
    case grid(String)
    case gridAutoFlow(String)
    case gridAutoColumns(String)
    case gridAutoRows(String)
    case gridTemplate(String)
    case gridTemplateAreas(String)
    case gridTemplateColumns(String)
    case gridTemplateRows(String)
    case gridArea(String)
    case gridColumn(String)
    case gridColumnStart(String)
    case gridColumnEnd(String)
    case gridRow(String)
    case gridRowStart(String)
    case gridRowEnd(String)
    case hangingPunctuation(String)
    case height(String)
    case hyphenateCharacter(String)
    case hyphenateLimitChars(String)
    case hyphenateLimitLast(String)
    case hyphenateLimitLines(String)
    case hyphenateLimitZone(String)
    case hyphens(String)
    case icon(String)
    case imageOrientation(String)
    case imageResolution(String)
    case imageRendering(String)
    case ime(String)
    case imeAlign(String)
    case imeMode(String)
    case imeOffset(String)
    case imeWidth(String)
    case initialLetters(String)
    case inlineBoxAlign(String)
    case isolation(String)
    case justifyContent(String)
    case justifyItems(String)
    case justifySelf(String)
    case kerning(String)
    case left(String)
    case letterSpacing(String)
    case lightingColor(String)
    case lineBoxContain(String)
    case lineBreak(String)
    case lineGrid(String)
    case lineHeight(String)
    case lineSlack(String)
    case lineSnap(String)
    case listStyle(String)
    case listStyleImage(String)
    case listStylePosition(String)
    case listStyleType(String)
    case margin(String)
    case marginBottom(String)
    case marginLeft(String)
    case marginRight(String)
    case marginTop(String)
    case marker(String)
    case markerEnd(String)
    case markerMid(String)
    case markerPattern(String)
    case markerSegment(String)
    case markerStart(String)
    case markerKnockoutLeft(String)
    case markerKnockoutRight(String)
    case markerSide(String)
    case marks(String)
    case marqueeDirection(String)
    case marqueePlayCount(String)
    case marqueeSpeed(String)
    case marqueeStyle(String)
    case mask(String)
    case maskImage(String)
    case maskRepeat(String)
    case maskPosition(String)
    case maskClip(String)
    case maskOrigin(String)
    case maskSize(String)
    case maskBox(String)
    case maskBoxOutset(String)
    case maskBoxRepeat(String)
    case maskBoxSlice(String)
    case maskBoxSource(String)
    case maskBoxWidth(String)
    case maskType(String)
    case maxHeight(String)
    case maxLines(String)
    case maxWidth(String)
    case minHeight(String)
    case minWidth(String)
    case mixBlendMode(String)
    case navDown(String)
    case navIndex(String)
    case navLeft(String)
    case navRight(String)
    case navUp(String)
    case objectFit(String)
    case objectPosition(String)
    case offsetAfter(String)
    case offsetBefore(String)
    case offsetEnd(String)
    case offsetStart(String)
    case opacity(String)
    case order(String)
    case orphans(String)
    case outline(String)
    case outlineColor(String)
    case outlineStyle(String)
    case outlineWidth(String)
    case outlineOffset(String)
    case overflow(String)
    case overflowX(String)
    case overflowY(String)
    case overflowStyle(String)
    case overflowWrap(String)
    case padding(String)
    case paddingBottom(String)
    case paddingLeft(String)
    case paddingRight(String)
    case paddingTop(String)
    case page(String)
    case pageBreakAfter(String)
    case pageBreakBefore(String)
    case pageBreakInside(String)
    case paintOrder(String)
    case pause(String)
    case pauseAfter(String)
    case pauseBefore(String)
    case perspective(String)
    case perspectiveOrigin(String)
    case pitch(String)
    case pitchRange(String)
    case playDuring(String)
    case pointerEvents(String)
    case position(String)
    case quotes(String)
    case regionFragment(String)
    case resize(String)
    case rest(String)
    case restAfter(String)
    case restBefore(String)
    case richness(String)
    case right(String)
    case rubyAlign(String)
    case rubyMerge(String)
    case rubyPosition(String)
    case scrollBehavior(String)
    case scrollSnapCoordinate(String)
    case scrollSnapDestination(String)
    case scrollSnapPointsX(String)
    case scrollSnapPointsY(String)
    case scrollSnapType(String)
    case shapeImageThreshold(String)
    case shapeInside(String)
    case shapeMargin(String)
    case shapeOutside(String)
    case shapePadding(String)
    case shapeRendering(String)
    case size(String)
    case speak(String)
    case speakAs(String)
    case speakHeader(String)
    case speakNumeral(String)
    case speakPunctuation(String)
    case speechRate(String)
    case stopColor(String)
    case stopOpacity(String)
    case stress(String)
    case stringSet(String)
    case stroke(String)
    case strokeDasharray(String)
    case strokeDashoffset(String)
    case strokeLinecap(String)
    case strokeLinejoin(String)
    case strokeMiterlimit(String)
    case strokeOpacity(String)
    case strokeWidth(String)
    case tabSize(String)
    case tableLayout(String)
    case textAlign(String)
    case textAlignAll(String)
    case textAlignLast(String)
    case textAnchor(String)
    case textCombineUpright(String)
    case textDecoration(String)
    case textDecorationColor(String)
    case textDecorationLine(String)
    case textDecorationStyle(String)
    case textDecorationSkip(String)
    case textEmphasis(String)
    case textEmphasisColor(String)
    case textEmphasisStyle(String)
    case textEmphasisPosition(String)
    case textEmphasisSkip(String)
    case textHeight(String)
    case textIndent(String)
    case textJustify(String)
    case textOrientation(String)
    case textOverflow(String)
    case textRendering(String)
    case textShadow(String)
    case textSizeAdjust(String)
    case textSpaceCollapse(String)
    case textSpacing(String)
    case textTransform(String)
    case textUnderlinePosition(String)
    case textWrap(String)
    case top(String)
    case touchAction(String)
    case transform(String)
    case transformBox(String)
    case transformOrigin(String)
    case transformStyle(String)
    case transition(String)
    case transitionDelay(String)
    case transitionDuration(String)
    case transitionProperty(String)
    case transitionTimingFunction(String)
    case unicodeBidi(String)
    case vectorEffect(String)
    case verticalAlign(String)
    case visibility(String)
    case voiceBalance(String)
    case voiceDuration(String)
    case voiceFamily(String)
    case voicePitch(String)
    case voiceRange(String)
    case voiceRate(String)
    case voiceStress(String)
    case voiceVolumn(String)
    case volume(String)
    case whiteSpace(String)
    case widows(String)
    case width(String)
    case willChange(String)
    case wordBreak(String)
    case wordSpacing(String)
    case wordWrap(String)
    case wrapFlow(String)
    case wrapThrough(String)
    case writingMode(String)
    case zIndex(String)
    case custom(key: String, value: String)

    var stringValue: String {
        switch self {
        case .alignContent: return "align-content"
        case .alignItems: return "align-items"
        case .alignSelf: return "align-self"
        case .alignmentAdjust: return "alignment-adjust"
        case .alignmentBaseline: return "alignment-baseline"
        case .all: return "all"
        case .alt: return "alt"
        case .animation: return "animation"
        case .animationDelay: return "animation-delay"
        case .animationDirection: return "animation-direction"
        case .animationDuration: return "animation-duration"
        case .animationFillMode: return "animation-fill-mode"
        case .animationIterationCount: return "animation-iteration-count"
        case .animationName: return "animation-name"
        case .animationPlayState: return "animation-play-state"
        case .animationTimingFunction: return "animation-timing-function"
        case .azimuth: return "azimuth"
        case .backfaceVisibility: return "backface-visibility"
        case .background: return "background"
        case .backgroundAttachment: return "background-attachment"
        case .backgroundClip: return "background-clip"
        case .backgroundColor: return "background-color"
        case .backgroundImage: return "background-image"
        case .backgroundOrigin: return "background-origin"
        case .backgroundPosition: return "background-position"
        case .backgroundRepeat: return "background-repeat"
        case .backgroundSize: return "background-size"
        case .backgroundBlendMode: return "background-blend-mode"
        case .baselineShift: return "baseline-shift"
        case .bleed: return "bleed"
        case .bookmarkLabel: return "bookmark-label"
        case .bookmarkLevel: return "bookmark-level"
        case .bookmarkState: return "bookmark-state"
        case .border: return "border"
        case .borderColor: return "border-color"
        case .borderStyle: return "border-style"
        case .borderWidth: return "border-width"
        case .borderBottom: return "border-bottom"
        case .borderBottomColor: return "border-bottom-color"
        case .borderBottomStyle: return "border-bottom-style"
        case .borderBottomWidth: return "border-bottom-width"
        case .borderLeft: return "border-left"
        case .borderLeftColor: return "border-left-color"
        case .borderLeftStyle: return "border-left-style"
        case .borderLeftWidth: return "border-left-width"
        case .borderRight: return "border-right"
        case .borderRightColor: return "border-right-color"
        case .borderRightStyle: return "border-right-style"
        case .borderRightWidth: return "border-right-width"
        case .borderTop: return "border-top"
        case .borderTopColor: return "border-top-color"
        case .borderTopStyle: return "border-top-style"
        case .borderTopWidth: return "border-top-width"
        case .borderCollapse: return "border-collapse"
        case .borderImage: return "border-image"
        case .borderImageOutset: return "border-image-outset"
        case .borderImageRepeat: return "border-image-repeat"
        case .borderImageSlice: return "border-image-slice"
        case .borderImageSource: return "border-image-source"
        case .borderImageWidth: return "border-image-width"
        case .borderRadius: return "border-radius"
        case .borderBottomLeftRadius: return "border-bottom-left-radius"
        case .borderBottomRightRadius: return "border-bottom-right-radius"
        case .borderTopLeftRadius: return "border-top-left-radius"
        case .borderTopRightRadius: return "border-top-right-radius"
        case .borderSpacing: return "border-spacing"
        case .bottom: return "bottom"
        case .boxDecorationBreak: return "box-decoration-break"
        case .boxShadow: return "box-shadow"
        case .boxSizing: return "box-sizing"
        case .boxSnap: return "box-snap"
        case .breakAfter: return "break-after"
        case .breakBefore: return "break-before"
        case .breakInside: return "break-inside"
        case .bufferedRendering: return "buffered-rendering"
        case .captionSide: return "caption-side"
        case .clear: return "clear"
        case .clearSide: return "clear-side"
        case .clip: return "clip"
        case .clipPath: return "clip-path"
        case .clipRule: return "clip-rule"
        case .color: return "color"
        case .colorAdjust: return "color-adjust"
        case .colorCorrection: return "color-correction"
        case .colorInterpolation: return "color-interpolation"
        case .colorInterpolationFilters: return "color-interpolation-filters"
        case .colorProfile: return "color-profile"
        case .colorRendering: return "color-rendering"
        case .columnFill: return "column-fill"
        case .columnGap: return "column-gap"
        case .columnRule: return "column-rule"
        case .columnRuleColor: return "column-rule-color"
        case .columnRuleStyle: return "column-rule-style"
        case .columnRuleWidth: return "column-rule-width"
        case .columnSpan: return "column-span"
        case .columns: return "columns"
        case .columnCount: return "column-count"
        case .columnWidth: return "column-width"
        case .contain: return "contain"
        case .content: return "content"
        case .counterIncrement: return "counter-increment"
        case .counterReset: return "counter-reset"
        case .counterSet: return "counter-set"
        case .cue: return "cue"
        case .cueAfter: return "cue-after"
        case .cueBefore: return "cue-before"
        case .cursor: return "cursor"
        case .direction: return "direction"
        case .display: return "display"
        case .displayInside: return "display-inside"
        case .displayOutside: return "display-outside"
        case .displayExtras: return "display-extras"
        case .displayBox: return "display-box"
        case .dominantBaseline: return "dominant-baseline"
        case .elevation: return "elevation"
        case .emptyCells: return "empty-cells"
        case .enableBackground: return "enable-background"
        case .fill: return "fill"
        case .fillOpacity: return "fill-opacity"
        case .fillRule: return "fill-rule"
        case .filter: return "filter"
        case .float: return "float"
        case .floatDeferColumn: return "float-defer-column"
        case .floatDeferPage: return "float-defer-page"
        case .floatOffset: return "float-offset"
        case .floatWrap: return "float-wrap"
        case .flowInto: return "flow-into"
        case .flowFrom: return "flow-from"
        case .flex: return "flex"
        case .flexBasis: return "flex-basis"
        case .flexGrow: return "flex-grow"
        case .flexShrink: return "flex-shrink"
        case .flexFlow: return "flex-flow"
        case .flexDirection: return "flex-direction"
        case .flexWrap: return "flex-wrap"
        case .floodColor: return "flood-color"
        case .floodOpacity: return "flood-opacity"
        case .font: return "font"
        case .fontFamily: return "font-family"
        case .fontSize: return "font-size"
        case .fontStretch: return "font-stretch"
        case .fontStyle: return "font-style"
        case .fontWeight: return "font-weight"
        case .fontFeatureSettings: return "font-feature-settings"
        case .fontKerning: return "font-kerning"
        case .fontLanguageOverride: return "font-language-override"
        case .fontSizeAdjust: return "font-size-adjust"
        case .fontSynthesis: return "font-synthesis"
        case .fontVariant: return "font-variant"
        case .fontVariantAlternates: return "font-variant-alternates"
        case .fontVariantCaps: return "font-variant-caps"
        case .fontVariantEastAsian: return "font-variant-east-asian"
        case .fontVariantLigatures: return "font-variant-ligatures"
        case .fontVariantNumeric: return "font-variant-numeric"
        case .fontVariantPosition: return "font-variant-position"
        case .footnotePolicy: return "footnote-policy"
        case .glyphOrientationHorizontal: return "glyph-orientation-horizontal"
        case .glyphOrientationVertical: return "glyph-orientation-vertical"
        case .grid: return "grid"
        case .gridAutoFlow: return "grid-auto-flow"
        case .gridAutoColumns: return "grid-auto-columns"
        case .gridAutoRows: return "grid-auto-rows"
        case .gridTemplate: return "grid-template"
        case .gridTemplateAreas: return "grid-template-areas"
        case .gridTemplateColumns: return "grid-template-columns"
        case .gridTemplateRows: return "grid-template-rows"
        case .gridArea: return "grid-area"
        case .gridColumn: return "grid-column"
        case .gridColumnStart: return "grid-column-start"
        case .gridColumnEnd: return "grid-column-end"
        case .gridRow: return "grid-row"
        case .gridRowStart: return "grid-row-start"
        case .gridRowEnd: return "grid-row-end"
        case .hangingPunctuation: return "hanging-punctuation"
        case .height: return "height"
        case .hyphenateCharacter: return "hyphenate-character"
        case .hyphenateLimitChars: return "hyphenate-limit-chars"
        case .hyphenateLimitLast: return "hyphenate-limit-last"
        case .hyphenateLimitLines: return "hyphenate-limit-lines"
        case .hyphenateLimitZone: return "hyphenate-limit-zone"
        case .hyphens: return "hyphens"
        case .icon: return "icon"
        case .imageOrientation: return "image-orientation"
        case .imageResolution: return "image-resolution"
        case .imageRendering: return "image-rendering"
        case .ime: return "ime"
        case .imeAlign: return "ime-align"
        case .imeMode: return "ime-mode"
        case .imeOffset: return "ime-offset"
        case .imeWidth: return "ime-width"
        case .initialLetters: return "initial-letters"
        case .inlineBoxAlign: return "inline-box-align"
        case .isolation: return "isolation"
        case .justifyContent: return "justify-content"
        case .justifyItems: return "justify-items"
        case .justifySelf: return "justify-self"
        case .kerning: return "kerning"
        case .left: return "left"
        case .letterSpacing: return "letter-spacing"
        case .lightingColor: return "lighting-color"
        case .lineBoxContain: return "line-box-contain"
        case .lineBreak: return "line-break"
        case .lineGrid: return "line-grid"
        case .lineHeight: return "line-height"
        case .lineSlack: return "line-slack"
        case .lineSnap: return "line-snap"
        case .listStyle: return "list-style"
        case .listStyleImage: return "list-style-image"
        case .listStylePosition: return "list-style-position"
        case .listStyleType: return "list-style-type"
        case .margin: return "margin"
        case .marginBottom: return "margin-bottom"
        case .marginLeft: return "margin-left"
        case .marginRight: return "margin-right"
        case .marginTop: return "margin-top"
        case .marker: return "marker"
        case .markerEnd: return "marker-end"
        case .markerMid: return "marker-mid"
        case .markerPattern: return "marker-pattern"
        case .markerSegment: return "marker-segment"
        case .markerStart: return "marker-start"
        case .markerKnockoutLeft: return "marker-knockout-left"
        case .markerKnockoutRight: return "marker-knockout-right"
        case .markerSide: return "marker-side"
        case .marks: return "marks"
        case .marqueeDirection: return "marquee-direction"
        case .marqueePlayCount: return "marquee-play-count"
        case .marqueeSpeed: return "marquee-speed"
        case .marqueeStyle: return "marquee-style"
        case .mask: return "mask"
        case .maskImage: return "mask-image"
        case .maskRepeat: return "mask-repeat"
        case .maskPosition: return "mask-position"
        case .maskClip: return "mask-clip"
        case .maskOrigin: return "mask-origin"
        case .maskSize: return "mask-size"
        case .maskBox: return "mask-box"
        case .maskBoxOutset: return "mask-box-outset"
        case .maskBoxRepeat: return "mask-box-repeat"
        case .maskBoxSlice: return "mask-box-slice"
        case .maskBoxSource: return "mask-box-source"
        case .maskBoxWidth: return "mask-box-width"
        case .maskType: return "mask-type"
        case .maxHeight: return "max-height"
        case .maxLines: return "max-lines"
        case .maxWidth: return "max-width"
        case .minHeight: return "min-height"
        case .minWidth: return "min-width"
        case .mixBlendMode: return "mix-blend-mode"
        case .navDown: return "nav-down"
        case .navIndex: return "nav-index"
        case .navLeft: return "nav-left"
        case .navRight: return "nav-right"
        case .navUp: return "nav-up"
        case .objectFit: return "object-fit"
        case .objectPosition: return "object-position"
        case .offsetAfter: return "offset-after"
        case .offsetBefore: return "offset-before"
        case .offsetEnd: return "offset-end"
        case .offsetStart: return "offset-start"
        case .opacity: return "opacity"
        case .order: return "order"
        case .orphans: return "orphans"
        case .outline: return "outline"
        case .outlineColor: return "outline-color"
        case .outlineStyle: return "outline-style"
        case .outlineWidth: return "outline-width"
        case .outlineOffset: return "outline-offset"
        case .overflow: return "overflow"
        case .overflowX: return "overflow-x"
        case .overflowY: return "overflow-y"
        case .overflowStyle: return "overflow-style"
        case .overflowWrap: return "overflow-wrap"
        case .padding: return "padding"
        case .paddingBottom: return "padding-bottom"
        case .paddingLeft: return "padding-left"
        case .paddingRight: return "padding-right"
        case .paddingTop: return "padding-top"
        case .page: return "page"
        case .pageBreakAfter: return "page-break-after"
        case .pageBreakBefore: return "page-break-before"
        case .pageBreakInside: return "page-break-inside"
        case .paintOrder: return "paint-order"
        case .pause: return "pause"
        case .pauseAfter: return "pause-after"
        case .pauseBefore: return "pause-before"
        case .perspective: return "perspective"
        case .perspectiveOrigin: return "perspective-origin"
        case .pitch: return "pitch"
        case .pitchRange: return "pitch-range"
        case .playDuring: return "play-during"
        case .pointerEvents: return "pointer-events"
        case .position: return "position"
        case .quotes: return "quotes"
        case .regionFragment: return "region-fragment"
        case .resize: return "resize"
        case .rest: return "rest"
        case .restAfter: return "rest-after"
        case .restBefore: return "rest-before"
        case .richness: return "richness"
        case .right: return "right"
        case .rubyAlign: return "ruby-align"
        case .rubyMerge: return "ruby-merge"
        case .rubyPosition: return "ruby-position"
        case .scrollBehavior: return "scroll-behavior"
        case .scrollSnapCoordinate: return "scroll-snap-coordinate"
        case .scrollSnapDestination: return "scroll-snap-destination"
        case .scrollSnapPointsX: return "scroll-snap-points-x"
        case .scrollSnapPointsY: return "scroll-snap-points-y"
        case .scrollSnapType: return "scroll-snap-type"
        case .shapeImageThreshold: return "shape-image-threshold"
        case .shapeInside: return "shape-inside"
        case .shapeMargin: return "shape-margin"
        case .shapeOutside: return "shape-outside"
        case .shapePadding: return "shape-padding"
        case .shapeRendering: return "shape-rendering"
        case .size: return "size"
        case .speak: return "speak"
        case .speakAs: return "speak-as"
        case .speakHeader: return "speak-header"
        case .speakNumeral: return "speak-numeral"
        case .speakPunctuation: return "speak-punctuation"
        case .speechRate: return "speech-rate"
        case .stopColor: return "stop-color"
        case .stopOpacity: return "stop-opacity"
        case .stress: return "stress"
        case .stringSet: return "string-set"
        case .stroke: return "stroke"
        case .strokeDasharray: return "stroke-dasharray"
        case .strokeDashoffset: return "stroke-dashoffset"
        case .strokeLinecap: return "stroke-linecap"
        case .strokeLinejoin: return "stroke-linejoin"
        case .strokeMiterlimit: return "stroke-miterlimit"
        case .strokeOpacity: return "stroke-opacity"
        case .strokeWidth: return "stroke-width"
        case .tabSize: return "tab-size"
        case .tableLayout: return "table-layout"
        case .textAlign: return "text-align"
        case .textAlignAll: return "text-align-all"
        case .textAlignLast: return "text-align-last"
        case .textAnchor: return "text-anchor"
        case .textCombineUpright: return "text-combine-upright"
        case .textDecoration: return "text-decoration"
        case .textDecorationColor: return "text-decoration-color"
        case .textDecorationLine: return "text-decoration-line"
        case .textDecorationStyle: return "text-decoration-style"
        case .textDecorationSkip: return "text-decoration-skip"
        case .textEmphasis: return "text-emphasis"
        case .textEmphasisColor: return "text-emphasis-color"
        case .textEmphasisStyle: return "text-emphasis-style"
        case .textEmphasisPosition: return "text-emphasis-position"
        case .textEmphasisSkip: return "text-emphasis-skip"
        case .textHeight: return "text-height"
        case .textIndent: return "text-indent"
        case .textJustify: return "text-justify"
        case .textOrientation: return "text-orientation"
        case .textOverflow: return "text-overflow"
        case .textRendering: return "text-rendering"
        case .textShadow: return "text-shadow"
        case .textSizeAdjust: return "text-size-adjust"
        case .textSpaceCollapse: return "text-space-collapse"
        case .textSpacing: return "text-spacing"
        case .textTransform: return "text-transform"
        case .textUnderlinePosition: return "text-underline-position"
        case .textWrap: return "text-wrap"
        case .top: return "top"
        case .touchAction: return "touch-action"
        case .transform: return "transform"
        case .transformBox: return "transform-box"
        case .transformOrigin: return "transform-origin"
        case .transformStyle: return "transform-style"
        case .transition: return "transition"
        case .transitionDelay: return "transition-delay"
        case .transitionDuration: return "transition-duration"
        case .transitionProperty: return "transition-property"
        case .transitionTimingFunction: return "transition-timing-function"
        case .unicodeBidi: return "unicode-bidi"
        case .vectorEffect: return "vector-effect"
        case .verticalAlign: return "vertical-align"
        case .visibility: return "visibility"
        case .voiceBalance: return "voice-balance"
        case .voiceDuration: return "voice-duration"
        case .voiceFamily: return "voice-family"
        case .voicePitch: return "voice-pitch"
        case .voiceRange: return "voice-range"
        case .voiceRate: return "voice-rate"
        case .voiceStress: return "voice-stress"
        case .voiceVolumn: return "voice-volumn"
        case .volume: return "volume"
        case .whiteSpace: return "white-space"
        case .widows: return "widows"
        case .width: return "width"
        case .willChange: return "will-change"
        case .wordBreak: return "word-break"
        case .wordSpacing: return "word-spacing"
        case .wordWrap: return "word-wrap"
        case .wrapFlow: return "wrap-flow"
        case .wrapThrough: return "wrap-through"
        case .writingMode: return "writing-mode"
        case .zIndex: return "z-index"
        case let .custom(key, _): return key
        }
    }
}
