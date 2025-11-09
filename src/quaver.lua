---@diagnostic disable: missing-fields, duplicate-doc-field, duplicate-doc-alias, unused-local
---@meta quaver-intellisense

---@alias NoteLane 1|2|3|4|5|6|7|8|9|10 The lane of a particular note.
---@alias SnapNumber 1|2|3|4|5|6|8|12|16 The denominator of the corresponding snap.
---@alias HitSounds userdata A bitwise mask defining the hitsounds, which when converted to base 2, displays as abcd. `a` dictates clap, `b` dictates finish, `c` dictates whistle, and `d` is irrelevant.

---@class (exact) ScrollGroup
---##### (READ-ONLY)
---#### The initial [sv](lua://ScrollVelocity) multiplier of this [scroll group](lua://ScrollGroup).
---@field InitialScrollVelocity number
---##### (READ-ONLY)
---#### All [scroll velocities](lua://ScrollVelocity) within the [scroll group](lua://ScrollGroup).
---@field ScrollVelocities ScrollVelocity[]
---##### (READ-ONLY)
---#### All [scroll speed factors](lua://ScrollSpeedFactor) within the [scroll group](lua://ScrollGroup).
---@field ScrollSpeedFactors ScrollSpeedFactor[]
---##### (READ-ONLY)
---#### Gets the nearest [scroll velocity](lua://ScrollVelocity) before the `time` parameter.
---@field GetScrollVelocityAt fun(time: number): ScrollVelocity
---##### (READ-ONLY)
---#### Gets the nearest [scroll speed factor](lua://ScrollSpeedFactor) before the `time` parameter.
---@field GetScrollSpeedFactorAt fun(time: number): ScrollSpeedFactor
---##### (READ-ONLY)
---#### A string of format `r,g,b` representing the color of the [editor layer](lua://EditorLayer). `r`, `g`, and `b` are integers within [0,255].
---@field ColorRgb string
---##### (READ-ONLY)
---#### Determines whether or not the timing group color is visible in the editor.
---@field Hidden boolean

---@class (exact) ScrollSpeedFactor
---##### (READ-ONLY)
---#### The time at which the [scroll speed factor](lua://ScrollSpeedFactor) takes effect.
---@field StartTime number
---##### (READ-ONLY)
---#### The factor at which to multiply the player's scroll speed.
---@field Multiplier number

---@class (exact) ScrollVelocity
---##### (READ-ONLY)
---#### The time at which the [scroll velocity](lua://ScrollVelocity) takes effect.
---@field StartTime number
---##### (READ-ONLY)
---#### The factor at which to multiply the player's [scroll velocity](lua://ScrollVelocity).
---@field Multiplier number

---@class (exact) Bookmark
---##### (READ-ONLY)
---#### The time the [bookmark](lua://Bookmark) is attached to.
---@field StartTime integer
---##### (READ-ONLY)
---#### The contents of the [bookmark](lua://Bookmark).
---@field Note string

---@class (exact) HitObject
---##### (READ-ONLY)
---#### The time the note is present.
---@field StartTime integer
---##### (READ-ONLY)
---#### The lane the note is in.
---@field Lane NoteLane
---##### (READ-ONLY)
---#### The time the long note ends. If this note is not a long note, this value is 0.
---@field EndTime number
---##### (READ-ONLY)
---#### A bitwise mask representing hitsounds.
---@field HitSound HitSounds
---##### (READ-ONLY)
---#### The id of the [editor layer](lua://EditorLayer) this note is in.
---@field EditorLayer integer
---##### (READ-ONLY)
---#### The id of the [timing group](lua://ScrollGroup) that this note belongs to.
---@field TimingGroup string

---@class (exact) TimingPoint
---##### (READ-ONLY)
---#### The time in which the [timing point](lua://TimingPoint) is located.
---@field StartTime number
---##### (READ-ONLY)
---#### The beats per minute, or bpm of the [timing point](lua://TimingPoint).
---@field Bpm number
---##### (READ-ONLY)
---#### The time signature of the [timing point](lua://TimingPoint).
---@field Signature number
---##### (READ-ONLY)
---#### Determines whether or not the timing lines are rendered.
---@field Hidden boolean

---@class (exact) EditorLayer
---##### (READ-ONLY)
---#### The name of the [editor layer](lua://EditorLayer).
---@field Name string
---##### (READ-ONLY)
---#### `true` if the layer is hidden within the editor.
---@field Hidden boolean
---##### (READ-ONLY)
---#### A string of format `r,g,b` representing the color of the [editor layer](lua://EditorLayer). `r`, `g`, and `b` are integers within [0,255].
---@field ColorRgb string

---@class (exact) EditorAction
---##### (READ-ONLY)
---#### The type of action that was performed.
---@field Type userdata

---@class (exact) Vector2
---@field x number The first component of the vector.
---@field y number The second component of the vector.
---@operator add(Vector2): Vector2
---@operator sub(Vector2): Vector2
---@operator mul(Vector2 | number): Vector2
---@operator div(Vector2 | number): Vector2
---@operator unm(Vector2): Vector2

---@class (exact) Vector3
---@field x number The first component of the vector.
---@field y number The second component of the vector.
---@field z number The third component of the vector.
---@operator add(Vector3): Vector3
---@operator sub(Vector3): Vector3
---@operator mul(Vector3 | number): Vector3
---@operator div(Vector3 | number): Vector3
---@operator unm(Vector3): Vector3

---@class (exact) Vector4
---@field x number The first component of the vector.
---@field y number The second component of the vector.
---@field z number The third component of the vector.
---@field w number The fourth component of the vector.
---@operator add(Vector4): Vector4
---@operator sub(Vector4): Vector4
---@operator mul(Vector4 | number): Vector4
---@operator div(Vector4 | number): Vector4
---@operator unm(Vector4): Vector4

vector = {}

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns the absolute value of each element of a vector.
---@param v T The initial vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Abs(v) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns the sum of two vectors.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Add(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Clamps a vector between two others.
---@param v T The vector to clamp.
---@param min T The floor of the resultant vector.
---@param max T The ceiling of the resultant vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Clamp(v, min, max) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Takes a cross product between two vectors (only works with [`Vector3`](lua://Vector3)).
---@param v1 Vector3 The first vector.
---@param v2 Vector3 The second vector.
---@return Vector3 vctr The resultant vector, with a magnitude equal to the area of a parallelogram projected by `v1` and `v2`.
---@nodiscard
function vector.Cross(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Finds the distance between two vectors.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return number distance The distance between the two vectors.
---@nodiscard
function vector.Distance(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Finds the distance between two vectors, squared.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return number distanceSq The squared distance between the two vectors.
---@nodiscard
function vector.DistanceSquared(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Divides two vectors, termwise.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Divide(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Takes the dot product of two vectors; that is, multiplies the two vectors termwise then returns the sum of the resulting terms.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return number product The dot product of the two vectors.
---@nodiscard
function vector.Dot(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Determines the literal length of a vector. DOES NOT DETERMINE ITS MAGNITUDE.
---@param v T The vector to measure.
---@return 2|3|4 length `4` if the input is a [`Vector4`](lua://Vector4), `3` if the input is a [`Vector3`](lua://Vector3), and `2` otherwise.
---@nodiscard
function vector.Length(v) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a vector that is `(f * 100)%` of the way from travelling between `v1` and `v2`.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@param f number A number within [0-1] which determines the weight of `v2`.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Lerp(v1, v2, f) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a vector which has the maximum value of both vectors, termwise.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Max(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a vector which has the minimum value of both vectors, termwise.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Min(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a vector which has the remainder of the first vector divided by the second, termwise.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Modulo(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Multiplies the two vectors termwise and returns the product.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Multiply(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Negates the given vector termwise.
---@param v T The vector to negate.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Negate(v) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Creates a new [`Vector2`](lua://Vector2).
---@param s1 number The first element.
---@param s2 number The second element.
---@return Vector2 vctr The output vector.
---@nodiscard
function vector.New(s1, s2) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Creates a new [`Vector3`](lua://Vector3).
---@param s1 number The first element.
---@param s2 number The second element.
---@param s3 number The third element.
---@return Vector3 vctr The output vector.
---@nodiscard
function vector.New(s1, s2, s3) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Creates a new [`Vector4`](lua://Vector4).
---@param s1 number The first element.
---@param s2 number The second element.
---@param s3 number The third element.
---@param s4 number The fourth element.
---@return Vector4 vctr The output vector.
---@nodiscard
function vector.New(s1, s2, s3, s4) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Normalizes the given vector such that it has a magnitude of 1.
---@param v T The vector to normalize.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Normalize(v) end

---@generic T : Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a vector of a requested dimension, with all elements being `1`.
---@param n T The dimension of the vector. Assuming a vector is given as the argument, the dimension of the given vector is used.
---@return T vctr A vector of dimension `n` with all elements being `1`.
---@nodiscard
function vector.One(n) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a [`Vector2`](lua://Vector2), with all elements being `1`.
---@param n number Any number.
---@return Vector2 vctr A [`Vector2`](lua://Vector2) with all elements being `1`.
---@nodiscard
function vector.One(n) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Reflects a vector across a surface given by its normal vector and pivot point [`vector.Zero`](lua://vector.Zero).
---@param v T The vector to reflect.
---@param norm T The normal vector of the surface in which to reflect `v`.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Reflect(v, norm) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a vector which has the euclidean remainder of the first vector divided by the second, termwise. A euclidean remainder is like a normal remainder, but if the closest normal remainder is negative then the divisor is added to make it positive.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.RemEuclid(v1, v2) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Square roots the given vector, termwise.
---@param v T The vector to root.
---@return T vctr The resultant vector.
---@nodiscard
function vector.SquareRoot(v) end

---@generic T : number | Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns the difference of two vectors.
---@param v1 T The first vector.
---@param v2 T The second vector.
---@return T vctr The resultant vector.
---@nodiscard
function vector.Subtract(v1, v2) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Coerces a [`Vector2`](lua://Vector2) to become a numerically-indexed table.
---@param v Vector2 The vector to pack.
---@return [number, number] table The resultant table.
---@nodiscard
function vector.Table(v) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Coerces a [`Vector3`](lua://Vector3) to become a numerically-indexed table.
---@param v Vector3 The vector to pack.
---@return [number, number, number] table The resultant table.
---@nodiscard
function vector.Table(v) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Coerces a [`Vector4`](lua://Vector4) to become a numerically-indexed table.
---@param v Vector4 The vector to pack.
---@return [number, number, number, number] table The resultant table.
---@nodiscard
function vector.Table(v) end

---@generic T : Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Creates a unit vector in the `W` direction with the given dimension.
---@param dim T The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.
---@return T vctr The resultant vector.
---@nodiscard
function vector.UnitW(dim) end

---@generic T : Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Creates a unit vector in the `X` direction with the given dimension.
---@param dim T The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.
---@return T vctr The resultant vector.
---@nodiscard
function vector.UnitX(dim) end

---@generic T : Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Creates a unit vector in the `Y` direction with the given dimension.
---@param dim T The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.
---@return T vctr The resultant vector.
---@nodiscard
function vector.UnitY(dim) end

---@generic T : Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Creates a unit vector in the `Z` direction with the given dimension.
---@param dim T The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.
---@return T vctr The resultant vector.
---@nodiscard
function vector.UnitZ(dim) end

---@generic T : Vector2 | Vector3 | Vector4
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a vector of a requested dimension, with all elements being `0`.
---@param n T The dimension of the vector. Assuming a vector is given as the argument, the dimension of the given vector is used.
---@return T vctr A vector of dimension `n` with all elements being `0`.
---@nodiscard
function vector.Zero(n) end

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Returns a [`Vector2`](lua://Vector2), with all elements being `0`.
---@param n number Any number.
---@return Vector2 vctr A [`Vector2`](lua://Vector2) with all elements being `0`.
---@nodiscard
function vector.Zero(n) end

actions = {}

---##### (READ-ONLY)
---#### Performs a given [editor action](lua://EditorAction).
---@param action EditorAction The [editor action](lua://EditorAction) to perform.
function actions.Perform(action) end

---##### (READ-ONLY)
---#### Performs a given set of [editor actions](lua://EditorAction).
---@param actionList EditorAction[] The [editor actions](lua://EditorAction) to perform.
function actions.PerformBatch(actionList) end

---##### (READ-ONLY)
---#### Undoes the most recent [editor action](lua://EditorAction).
function actions.Undo() end

---##### (READ-ONLY)
---#### Redoes the most recent undo.
function actions.Redo() end

---##### (READ-ONLY)
---#### Places a given [hit object](lua://HitObject), without the need to create an [editor action](lua://EditorAction).
---@param ho HitObject The [hit object](lua://HitObject) to place, which must be created via [`utils.CreateHitObject`](lua://utils.CreateHitObject).
function actions.PlaceHitObject(ho) end

---##### (READ-ONLY)
---#### Places a new [hit object](lua://HitObject), without the need to create an [editor action](lua://EditorAction).
---@param lane NoteLane The lane of the [hit object](lua://HitObject).
---@param startTime integer The start time of the [hit object](lua://HitObject).
---@param endTime? integer If placing a rice note, this value should be 0. Otherwise, this should be the time the long note ends.
---@param editorLayer? integer The id of the layer in which the [hit object](lua://HitObject) will lie.
---@param hitsounds? HitSounds The hitsounds attached to the [hit object](lua://HitObject).
---@param tgId? integer The id of the [timing group](lua://ScrollGroup) this [hit object](lua://HitObject) will be in.
function actions.PlaceHitObject(lane, startTime, endTime, editorLayer, hitsounds, tgId) end

---##### (READ-ONLY)
---#### Places a given set of [hit objects](lua://HitObject), without the need to create an [editor action](lua://EditorAction).
---@param hos HitObject[] The [hit objects](lua://HitObject) to place, which must be created via [`utils.CreateHitObject`](lua://utils.CreateHitObject).
function actions.PlaceHitObjectBatch(hos) end

---##### (READ-ONLY)
---#### Removes a given [hit object](lua://HitObject), assuming it already exists.
---@param ho HitObject The [hit object](lua://HitObject) to remove, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
function actions.RemoveHitObject(ho) end

---##### (READ-ONLY)
---#### Removes a given set of [hit objects](lua://HitObject), assuming they already exist.
---@param hos HitObject[] The [hit objects](lua://HitObject) to remove, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
function actions.RemoveHitObjectBatch(hos) end

---##### (READ-ONLY)
---#### Changes the length of a long-note type [hit object](lua://HitObject).
---@param ho HitObject The [hit object](lua://HitObject) to modify, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
---@param oldEndTime integer The original end time of the [hit object](lua://HitObject), or `hitObject.endTime`.
---@param newEndTime integer The desired time to move the LN end to.
function actions.ResizeLongNote(ho, oldEndTime, newEndTime) end

---##### (READ-ONLY)
---#### Places a given [scroll velocity](lua://ScrollVelocity), without the need to create an [editor action](lua://EditorAction).
---@param sv ScrollVelocity The [scroll velocity](lua://ScrollVelocity) to place, which must be created via [`utils.CreateScrollVelocity`](lua://utils.CreateScrollVelocity).
function actions.PlaceScrollVelocity(sv) end

---##### (READ-ONLY)
---#### Places a given set of [scroll velocities](lua://ScrollVelocity), without the need to create an [editor action](lua://EditorAction).
---@param svs ScrollVelocity[] The [scroll velocities](lua://ScrollVelocity) to place, which must be created via [`utils.CreateScrollVelocity`](lua://utils.CreateScrollVelocity).
function actions.PlaceScrollVelocityBatch(svs) end

---##### (READ-ONLY)
---#### Removes a given [scroll velocity](lua://ScrollVelocity), assuming it already exists.
---@param sv ScrollVelocity The [scroll velocity](lua://ScrollVelocity) to remove, which must be obtained via [`map.ScrollVelocities`](lua://map.ScrollVelocities) or something similar.
function actions.RemoveScrollVelocity(sv) end

---##### (READ-ONLY)
---#### Removes a given set of [scroll velocities](lua://ScrollVelocity), assuming they already exist.
---@param svs ScrollVelocity[] The [scroll velocities](lua://ScrollVelocity) to remove, which must be obtained via [`map.ScrollVelocities`](lua://map.ScrollVelocities) or something similar.
function actions.RemoveScrollVelocityBatch(svs) end

---##### (READ-ONLY)
---#### Places a given [timing point](lua://TimingPoint), without the need to create an [editor action](lua://EditorAction).
---@param tp TimingPoint The [timing point](lua://TimingPoint) to place, which must be created via [`utils.CreateTimingPoint`](lua://utils.CreateTimingPoint).
function actions.PlaceTimingPoint(tp) end

---##### (READ-ONLY)
---#### Places a given set of [timing points](lua://TimingPoint), without the need to create an [editor action](lua://EditorAction).
---@param tps TimingPoint[] The [timing points](lua://TimingPoint) to place, which must be created via [`utils.CreateTimingPoint`](lua://utils.CreateTimingPoint).
function actions.PlaceTimingPointBatch(tps) end

---##### (READ-ONLY)
---#### Removes a given [timing point](lua://TimingPoint), assuming it already exists.
---@param tp TimingPoint The [timing point](lua://TimingPoint) to remove, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
function actions.RemoveTimingPoint(tp) end

---##### (READ-ONLY)
---#### Removes a given set of [timing points](lua://TimingPoint), assuming they already exist.
---@param tps TimingPoint[] The [timing points](lua://TimingPoint) to remove, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
function actions.RemoveTimingPointBatch(tps) end

---##### (READ-ONLY)
---#### Changes the `startTime` of a given [timing point](lua://TimingPoint).
---@param tp TimingPoint The [timing point](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
---@param newTime number The new `startTime`.
function actions.ChangeTimingPointOffset(tp, newTime) end

---##### (READ-ONLY)
---#### Changes the `Bpm` of a given [timing point](lua://TimingPoint).
---@param tp TimingPoint The [timing point](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
---@param newBpm number The new `Bpm`.
function actions.ChangeTimingPointBpm(tp, newBpm) end

---##### (READ-ONLY)
---#### Changes if a given [timing point](lua://TimingPoint) should be `Hidden`.
---@param tp TimingPoint The [timing point](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
---@param newHidden boolean The new `Hidden` property.
function actions.ChangeTimingPointHidden(tp, newHidden) end

---##### (READ-ONLY)
---#### Changes the `startTime` of the given [timing points](lua://TimingPoint).
---@param tps TimingPoint[] The [timing points](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
---@param newTime number The new `startTime`.
function actions.ChangeTimingPointOffsetBatch(tps, newTime) end

---##### (READ-ONLY)
---#### Changes the `Bpm` of the given [timing points](lua://TimingPoint).
---@param tps TimingPoint[] The [timing points](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
---@param newBpm number The new `Bpm`.
function actions.ChangeTimingPointBpmBatch(tps, newBpm) end

---##### (READ-ONLY)
---#### Resets the given[timing point](lua://TimingPoint).
---@param tp TimingPoint The [timing point](lua://TimingPoint) to reset, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
function actions.ResetTimingPoint(tp) end

---##### (READ-ONLY)
---#### Moves the [`song time`](lua://state.SongTime) to the designated objects.
---@param input string | number The input string with navigation directions, usually obtained from copying notes in-game. If a number is given, this function will set the [`song time`](lua://state.SongTime) to the given value, in milliseconds.
function actions.GoToObjects(input) end

---##### (READ-ONLY)
---#### Sets the [hit object selection](lua://state.SelectedHitObjects) to be the [hit objects](lua://HitObject) passed as the argument.
---@param hos HitObject[] The [hit objects](lua://HitObject) to select, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
function actions.SetHitObjectSelection(hos) end

---##### (READ-ONLY)
---#### Sets the preview time of the map.
---@param time integer The preview time, in milliseconds.
function actions.SetPreviewTime(time) end

---##### (READ-ONLY)
---#### Creates the given [editor layer](lua://EditorLayer), without the need to create an [editor action](lua://EditorAction).
---@param layer EditorLayer The [editor layer](lua://EditorLayer) to create, which must be created via [`utils.CreateEditorLayer`](lua://utils.CreateEditorLayer).
---@param index? integer An optional index for the [editor layer](lua://EditorLayer) to be placed in. If none is given, the next available index is used.
function actions.CreateLayer(layer, index) end

---##### (READ-ONLY)
---#### Removes the given [editor layer](lua://EditorLayer), assuming it exists.
---@param layer EditorLayer The [editor layer](lua://EditorLayer) to remove, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.
function actions.RemoveLayer(layer) end

---##### (READ-ONLY)
---#### Renames the given [editor layer](lua://EditorLayer), assuming it exists.
---@param layer EditorLayer The [editor layer](lua://EditorLayer) to rename, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.
---@param newName string The new name the [editor layer](lua://EditorLayer) should have.
function actions.RenameLayer(layer, newName) end

---##### (READ-ONLY)
---#### Moves the given [hit objects](lua://HitObject) to the given [editor layer](lua://EditorLayer).
---@param layer EditorLayer The [editor layer](lua://EditorLayer) to move the [hit objects](lua://HitObject) to, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.
---@param hos HitObject[] The [hit objects](lua://HitObject) to move, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
function actions.MoveHitObjectsToLayer(layer, hos) end

---##### (READ-ONLY)
---#### Changes the color of the given [editor layer](lua://EditorLayer).
---@param layer EditorLayer The [editor layer](lua://EditorLayer) to alter the color of, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.
---@param r integer The strength of the red part of the color. Should be within [0-255].
---@param g integer The strength of the green part of the color. Should be within [0-255].
---@param b integer The strength of the blue part of the color. Should be within [0-255].
function actions.ChangeLayerColor(layer, r, g, b) end

---##### (READ-ONLY)
---#### Toggles the visibility of the given [editor layer](lua://EditorLayer).
---@param layer EditorLayer The [editor layer](lua://EditorLayer) to alter, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.
function actions.ToggleLayerVisibility(layer) end

---##### (READ-ONLY)
---#### Snaps the given [hit objects](lua://HitObject) to the nearest snap within the table of `snaps`.
---@param snaps integer[] The list of snap denominators to use.
---@param hos HitObject[] The [hit objects](lua://HitObject) to snap, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
function actions.ResnapNotes(snaps, hos) end

---##### (READ-ONLY)
---#### Places a given [bookmark](lua://Bookmark), without the need to create an [editor action](lua://EditorAction).
---@param bm Bookmark The [bookmark](lua://Bookmark) to place, which must be created via [`utils.CreateBookmark`](lua://utils.CreateBookmark).
function actions.AddBookmark(bm) end

---##### (READ-ONLY)
---#### Places a new [bookmark](lua://Bookmark), without the need to create an [editor action](lua://EditorAction).
---@param time integer The time to place the [bookmark](lua://Bookmark).
---@param info string The content of the [bookmark](lua://Bookmark).
function actions.AddBookmark(time, info) end

---##### (READ-ONLY)
---#### Places a given set of [bookmarks](lua://Bookmark), without the need to create an [editor action](lua://EditorAction).
---@param bms Bookmark[] The [bookmarks](lua://Bookmark) to place, which must be created via [`utils.CreateBookmark`](lua://utils.CreateBookmark).
function actions.AddBookmarkBatch(bms) end

---##### (READ-ONLY)
---#### Removes a given [bookmark](lua://Bookmark), assuming it exists.
---@param bm Bookmark The [bookmark](lua://Bookmark) to remove, which must be obtained via [`map.Bookmarks`](lua://map.Bookmarks) or something similar.
function actions.RemoveBookmark(bm) end

---##### (READ-ONLY)
---#### Removes a given set of [bookmarks](lua://Bookmark), assuming they exist.
---@param bms Bookmark[] The [bookmarks](lua://Bookmark) to remove, which must be obtained via [`map.Bookmarks`](lua://map.Bookmarks) or something similar.
function actions.RemoveBookmarkBatch(bms) end

---##### (READ-ONLY)
---#### Changes the contents of a [bookmark](lua://Bookmark).
---@param bm Bookmark The [bookmark](lua://Bookmark) to edit, which must be obtained via [`map.Bookmarks`](lua://map.Bookmarks) or something similar.
---@param newNote string The new contents of the [bookmark](lua://Bookmark).
function actions.EditBookmark(bm, newNote) end

---##### (READ-ONLY)
---#### Changes the start time of the given [bookmarks](lua://Bookmark).
---@param bms Bookmark[] The [bookmarks](lua://Bookmark) to edit, which must be obtained via [`map.Bookmarks`](lua://map.Bookmarks) or something similar.
---@param offset integer The new `startTime` of the [bookmarks](lua://Bookmark).
function actions.ChangeBookmarkBatchOffset(bms, offset) end

---##### (READ-ONLY)
---#### Places the given [timing group](lua://ScrollGroup), without the need to create an [editor action](lua://EditorAction).
---@param id string The id of the [timing group](lua://ScrollGroup) to place, usually generated by [`utils.GenerateTimingGroupId`](lua://utils.GenerateTimingGroupId).
---@param tg ScrollGroup The [timing group](lua://ScrollGroup) to place, which must be created via [`utils.CreateScrollGroup`](lua://utils.CreateScrollGroup).
---@param hos HitObject[] A list of [hit objects](lua://HitObject) that should be placed within the [timing group](lua://ScrollGroup), which must be created via [`utils.CreateHitObject`](lua://utils.CreateHitObject), or obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
function actions.PlaceTimingGroup(id, tg, hos) end

---##### (READ-ONLY)
---#### Removes the given [timing group](lua://ScrollGroup), assuming it exists.
---@param id string The id of the [timing group](lua://ScrollGroup) to remove, which must be obtained via [`state.SelectedScrollGroup`](lua://state.SelectedScrollGroup) or something similar.
function actions.RemoveTimingGroup(id) end

---##### (READ-ONLY)
---#### Renames the given [timing group](lua://ScrollGroup).
---@param id string The id of the [timing group](lua://ScrollGroup) to rename, which must be obtained via [`state.SelectedScrollGroup`](lua://state.SelectedScrollGroup) or something similar.
---@param newId string The new id.
function actions.RenameTimingGroup(id, newId) end

---##### (READ-ONLY)
---#### Changes the color of the given [timing group](lua://ScrollGroup).
---@param id string The id of the [timing group](lua://ScrollGroup) to alter the color of, which must be obtained via [`state.SelectedScrollGroup`](lua://state.SelectedScrollGroup) or something similar.
---@param r integer The strength of the red part of the color. Should be within [0-255].
---@param g integer The strength of the green part of the color. Should be within [0-255].
---@param b integer The strength of the blue part of the color. Should be within [0-255].
function actions.ChangeTimingGroupColor(id, r, g, b) end

---##### (READ-ONLY)
---#### Moves all given [hit objects](lua://HitObject) to the given [timing group](lua://ScrollGroup).
---@param hos HitObject[] The [hit objects](lua://HitObject) to move, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
---@param id string The id of the [timing group](lua://ScrollGroup) to move the [hit objects](lua://HitObject) to, which must be obtained via [`state.SelectedScrollGroup`](lua://state.SelectedScrollGroup) or something similar.
function actions.MoveObjectsToTimingGroup(hos, id) end

state                          = {}

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The current song time in milliseconds.
state.SongTime                 = 0.0 ---@type number

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### A list of all [hit objects](lua://HitObject) within the current selection.
---#### If multiple [hit objects](lua://HitObject) are selected at once, the table will be in order of their `StartTime`. If they were selected one at a time using <kbd>Ctrl-Click</kbd>, then the table will be in order of their selection order.
state.SelectedHitObjects       = {} ---@type HitObject[]

---#### The `id`, or name, of the current selected [scroll group](lua://ScrollGroup).
state.SelectedScrollGroupId    = "$Default" ---@type string

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The current selected [scroll group](lua://ScrollGroup).
state.SelectedScrollGroup      = {} ---@type ScrollGroup

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The nearest [bookmark](lua://Bookmark) before the current `state.SongTime`.
state.CurrentBookmark          = {} ---@type Bookmark

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The nearest [scroll velocity](lua://ScrollVelocity) before the current `state.SongTime`.
state.CurrentScrollVelocity    = {} ---@type ScrollVelocity

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The nearest [scroll speed factor](lua://ScrollSpeedFactor) before the current `state.SongTime`.
state.CurrentScrollSpeedFactor = {} ---@type ScrollSpeedFactor

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The nearest [timing point](lua://TimingPoint) before the current `state.SongTime`.
state.CurrentTimingPoint       = {} ---@type TimingPoint

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The current selected [editor layer](lua://EditorLayer).
state.CurrentLayer             = {} ---@type EditorLayer

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The selected snap's denominator. (e.g. 1/3 snap returns `3`, etc.)
state.CurrentSnap              = 1 ---@type integer

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The time elapsed between the last frame and the current frame, in milliseconds.
state.DeltaTime                = 0 ---@type number

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The current unix timestamp.
state.UnixTime                 = 0 ---@type integer

---#### MUST BE SET MANUALLY - Indicates to the game that the window is hovered.
state.IsWindowHovered          = false ---@type boolean

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The current ImGui scale.
state.Scale                    = 1 ---@type number

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### The size of the Quaver window.
state.WindowSize               = { 69, 69 } ---@type [number, number]

---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Stores a value that can be retrieved by [`state.GetValue`](lua://state.GetValue). Mainly used to persist data between hot-reloads.
---@param key string The identifier for this particular value.
---@param value any The value to store.
function state.SetValue(key, value) end

---@generic T
---##### (READ-ONLY) (EXISTS BEFORE RUNTIME)
---#### Gets a value previously stored by [`state.SetValue`](lua://state.SetValue). If the value doesn't exist, return `fallback` instead. Note that `nil` is considered a value, meaning if you store `nil` using [`state.SetValue`](lua://state.SetValue), then the `fallback` will not be used.
---@param key string The identifier for the value set by `state.SetValue`.
---@param fallback? T An optional term to return, if the result is `nil`.
---@return T value The stored value.
---@nodiscard
function state.GetValue(key, fallback) end

utils = {}

---##### (READ-ONLY)
---#### Creates a [scroll velocity](lua://ScrollVelocity), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
---@param startTime number The time to create the [scroll velocity](lua://ScrollVelocity), in milliseconds.
---@param multiplier number The factor at which to scale the player's [scroll velocity](lua://ScrollVelocity).
---@return ScrollVelocity sv The requested [scroll velocity](lua://ScrollVelocity).
---@nodiscard
function utils.CreateScrollVelocity(startTime, multiplier) end

---##### (READ-ONLY)
---#### Creates a [scroll speed factor](lua://ScrollSpeedFactor), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
---@param startTime number The time to create the [scroll speed factor](lua://ScrollSpeedFactor), in milliseconds.
---@param multiplier number The factor at which to scale the player's scroll speed.
---@return ScrollSpeedFactor ssf The requested [scroll speed factor](lua://ScrollSpeedFactor).
---@nodiscard
function utils.CreateScrollSpeedFactor(startTime, multiplier) end

---##### (READ-ONLY)
---#### Creates a [hit object](lua://HitObject), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
---@param startTime integer The time to create the note, in milliseconds.
---@param lane NoteLane The lane to create the note in.
---@param endTime? integer If given and non-zero, the note becomes a long note. This parameter determines when the long note will end.
---@param hitsounds? HitSounds The hitsounds that should be applied to the note.
---@param editorLayer? integer The index of the [editor layer](lua://EditorLayer) that this note should be added to.
---@return HitObject ho The requested note.
---@nodiscard
function utils.CreateHitObject(startTime, lane, endTime, hitsounds, editorLayer) end

---##### (READ-ONLY)
---#### Creates a [timing point](lua://TimingPoint), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
---@param startTime number The time to create the [timing point](lua://TimingPoint), in milliseconds.
---@param bpm number The beats per minute of the [timing point](lua://TimingPoint).
---@param signature? integer The time signature of the [timing point](lua://TimingPoint).
---@param hidden? boolean Whether or not to hide the timing lines in gameplay.
---@return TimingPoint tp The requested [timing point](lua://TimingPoint).
---@nodiscard
function utils.CreateTimingPoint(startTime, bpm, signature, hidden) end

---##### (READ-ONLY)
---#### Creates an [editor layer](lua://EditorLayer), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
---@param name string The name of this layer.
---@param hidden? boolean Whether or not to hide this layer in the editor.
---@param colorRgb? string The color of the [editor layer](lua://EditorLayer). This parameter should be a string of the form `r,g,b`, where `r`, `g`, and `b` are integers within [0,255].
---@return EditorLayer editorLayer The requested [editor layer](lua://EditorLayer).
---@nodiscard
function utils.CreateEditorLayer(name, hidden, colorRgb) end

---##### (READ-ONLY)
---#### Creates a [bookmark](lua://Bookmark), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
---@param startTime number The time to create the [bookmark](lua://Bookmark), in milliseconds.
---@param note string The contents of the [bookmark](lua://Bookmark).
---@return Bookmark bm The requested [bookmark](lua://Bookmark).
---@nodiscard
function utils.CreateBookmark(startTime, note) end

---##### (READ-ONLY)
---#### Creates a [scroll group](lua://ScrollGroup), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
---@param svs ScrollVelocity[] The [scroll velocities](lua://ScrollVelocity) to add to the [scroll group](lua://ScrollGroup).
---@param initialSV? number The initial [scroll velocity](lua://ScrollVelocity) of the [scroll group](lua://ScrollGroup).
---@param colorRgb? string The color of the [scroll group](lua://ScrollGroup). This parameter should be a string of the form `r,g,b`, where `r`, `g`, and `b` are integers within [0,255].
---@return ScrollGroup tg The requested [scroll group](lua://ScrollGroup).
---@nodiscard
function utils.CreateScrollGroup(svs, initialSV, colorRgb) end

---##### (READ-ONLY)
---#### Creates an [editor action](lua://EditorAction), to later be executed with [`actions.Perform`](lua://actions.Perform).
---@param type EditorActionType The type of action to perform.
---@param ... any The parameters of the action. Depending on the prefix of the action, different parameters should be passed in:
---- Place/Add/Remove // ... should only be one term, the object to add.
---- Place/Add/Remove Batch // ... should only be one term, a table of the objects to add.
---- Move/Swap/Flip/Change/Toggle // ... should be two terms, the first being the objects to manipulate, the second being the instruction for the manipulation.
---- CreateTimingGroup // ... should be three terms:
---    1. The id of the [timing group](lua://ScrollGroup).
---    2. The [timing group](lua://ScrollGroup) previously created by `utils.CreateScrollGroup`.
---    3. The [hit objects](lua://HitObject) to add to the [scroll group](lua://ScrollGroup).
---@return EditorAction editorAction The requested [editor action](lua://EditorAction).
---@nodiscard
function utils.CreateEditorAction(type, ...) end

---##### (READ-ONLY)
---#### Returns a formatted version of the inputted `time`.
---@param time number The elapsed time to format, in milliseconds.
---@return string str The formatted time.
---@nodiscard
function utils.MillisecondsToTime(time) end

---##### (READ-ONLY)
---#### Returns `true` if the given key is pressed within the given frame.
---@param key Key A key, from the `keys` enum.
---@return boolean keyPressed Whether or not the key has been pressed this frame.
---@nodiscard
function utils.IsKeyPressed(key) end

---##### (READ-ONLY)
---#### Returns `true` if the given key is released within the given frame.
---@param key Key A key, from the `keys` enum.
---@return boolean keyReleased Whether or not the key has been released this frame.
---@nodiscard
function utils.IsKeyReleased(key) end

---##### (READ-ONLY)
---#### Returns `true` if the given key is held down within the given frame.
---@param key Key A key, from the `keys` enum.
---@return boolean keyDown Whether or not the key is currently being held down.
---@nodiscard
function utils.IsKeyDown(key) end

---##### (READ-ONLY)
---#### Returns `true` if the given key is not held down within the given frame.
---@param key Key A key, from the `keys` enum.
---@return boolean keyUp Whether or not the key is currently not held down.
---@nodiscard
function utils.IsKeyUp(key) end

---##### (READ-ONLY)
---#### Returns a unique `tgId` with the given prefix. If no prefix is given, defaults to `SG_`.
---@param prefix? string An optional prefix to all of the ids.
---@return string tgId The new timing group id, to be passed into an [`EditorAction`](lua://EditorAction) (of type `CreateTimingGroup`).
---@nodiscard
function utils.GenerateTimingGroupId(prefix) end

---##### (READ-ONLY)
---#### Returns `count` number of `tgIds` with the given prefix. If no prefix is given, defaults to `SG_`.
---@param count integer The number of timing group ids to generate.
---@param prefix? string An optional prefix to all of the ids.
---@return string[] tgIds The new timing group ids, to be passed into some [`EditorActions`](lua://EditorAction) (of type `CreateTimingGroup`).
---@nodiscard
function utils.GenerateTimingGroupIds(count, prefix) end

map                       = {}

---##### (READ-ONLY)
---#### Returns `1` in 4k, `2` in 7k.
map.Mode                  = 1 ---@type number

---##### (READ-ONLY)
---#### `true` if BPM does not affect [scroll velocity](lua://ScrollVelocity).
map.Normalized            = true ---@type boolean

---##### (READ-ONLY)
---#### A table of all [scroll velocities](lua://ScrollVelocity) in the current timing group.
map.ScrollVelocities      = {} ---@type ScrollVelocity[]

---##### (READ-ONLY)
---#### A table of all [scroll speed factors](lua://ScrollSpeedFactor) in the current timing group.
map.ScrollSpeedFactors    = {} ---@type ScrollSpeedFactor[]

---##### (READ-ONLY)
---#### A table of all [timing groups](lua://ScrollGroup) in the map, where the keys are the identifiers of the scroll group.
map.TimingGroups          = {} ---@type { [string]: ScrollGroup}

---##### (READ-ONLY)
---#### The default [scroll group](lua://ScrollGroup).
map.DefaultScrollGroup    = {} ---@type ScrollGroup

---##### (READ-ONLY)
---#### The global [scroll group](lua://ScrollGroup).
map.GlobalScrollGroup     = {} ---@type ScrollGroup

---##### (READ-ONLY)
---#### A table of all [hit objects](lua://HitObject) in the map.
map.HitObjects            = {} ---@type HitObject[]

---##### (READ-ONLY)
---#### A table of all [timing points](lua://TimingPoint) in the map.
map.TimingPoints          = {} ---@type TimingPoint[]

---##### (READ-ONLY)
---#### A table of all [editor layers](lua://EditorLayer) in the map.
map.EditorLayers          = {} ---@type EditorLayer[]

---##### (READ-ONLY)
---#### A table of all [bookmarks](lua://Bookmark) in the map.
map.Bookmarks             = {} ---@type Bookmark[]

---##### (READ-ONLY)
---#### The default [editor layer](lua://EditorLayer).
map.DefaultLayer          = {} ---@type EditorLayer

---##### (READ-ONLY)
---#### The length of the song, in milliseconds.
map.TrackLength           = 0 ---@type number

---##### (READ-ONLY)
---#### `true` if the "Legacy LN Rendering" option is enabled.
map.LegacyLNRendering     = false ---@type boolean

---##### (READ-ONLY)
---#### The initial [scroll velocity](lua://ScrollVelocity) multiplier of the current [scroll group](lua://ScrollGroup). Defaults to 1.
map.InitialScrollVelocity = 1 ---@type number

---##### (READ-ONLY)
---#### Returns the map metadata in the form of `{Artist} - {Title} [{Difficulty}]`.
---@return string str The map metadata, as mentioned above.
---@nodiscard
function map.ToString() end

---##### (READ-ONLY)
---#### Returns the number of possible keys within the map.
---@param includeScratch? boolean Whether or not to include the scratch lane. This should almost never be true.
---@return integer keyCount The number of keys in the map, usually 4 or 7.
---@nodiscard
function map.GetKeyCount(includeScratch) end

---##### (READ-ONLY)
---#### Returns the most common BPM in the map, determined by how much time a particular BPM is used.
---@return number? Bpm The BPM. This number should be identical to the BPM displayed in the song select menu.
---@nodiscard
function map.GetCommonBpm() end

---##### (READ-ONLY)
---#### Returns the nearest [timing point](lua://TimingPoint) before the given `time`.
---@param time number The time to start looking from, in milliseconds.
---@return TimingPoint? tp The requested [timing point](lua://TimingPoint).
---@nodiscard
function map.GetTimingPointAt(time) end

---##### (READ-ONLY)
---#### Returns the nearest [scroll velocity](lua://ScrollVelocity) before the given `time`, within `tgId`. If `tgId` is not given, it will search within the currently selected [scroll group](lua://ScrollGroup).
---@param time number The time to start looking from, in milliseconds.
---@param tgId? string The [timing group](lua://ScrollGroup) to look within. If this option is omitted, the function will search within the currently selected [timing group](lua://ScrollGroup).
---@return ScrollVelocity? sv The requested [scroll velocity](lua://ScrollVelocity).
---@nodiscard
function map.GetScrollVelocityAt(time, tgId) end

---##### (READ-ONLY)
---#### Returns the nearest [scroll speed factor](lua://ScrollSpeedFactor) before the given `time`, within `tgId`. If `tgId` is not given, it will search within the currently selected [scroll group](lua://ScrollGroup).
---@param time number The time to start looking from, in milliseconds.
---@param tgId? string The [timing group](lua://ScrollGroup) to look within. If this option is omitted, the function will search within the currently selected [timing group](lua://ScrollGroup).
---@return ScrollSpeedFactor? ssf The requested [scroll speed factor](lua://ScrollSpeedFactor).
---@nodiscard
function map.GetScrollSpeedFactorAt(time, tgId) end

---##### (READ-ONLY)
---#### Returns the [timing group](lua://ScrollGroup) corresponding with the given id.
---@param tgId string The id to search with.
---@return ScrollGroup? tg The [timing group](lua://ScrollGroup) corresponding to the id.
---@nodiscard
function map.GetTimingGroup(tgId) end

---##### (READ-ONLY)
---#### Returns a list of all [timing group](lua://ScrollGroup) ids.
---@return string[] ids The list of [timing group](lua://ScrollGroup) ids.
---@nodiscard
function map.GetTimingGroupIds() end

---##### (READ-ONLY)
---#### Returns all [hit objects](lua://HitObject) within the id's corresponding [timing group](lua://ScrollGroup).
---@param tgId string The [timing group](lua://ScrollGroup) to look within.
---@return HitObject[]? hos All [hit objects](lua://HitObject) within the requested [timing group](lua://ScrollGroup).
---@nodiscard
function map.GetTimingGroupObjects(tgId) end

---##### (READ-ONLY)
---#### Returns the nearest [bookmark](lua://Bookmark) before the given `time`.
---@param time number The time to start looking from, in milliseconds.
---@return Bookmark? bm The requested [bookmark](lua://Bookmark).
---@nodiscard
function map.GetBookmarkAt(time) end

---##### (READ-ONLY)
---#### Returns the length of the given [timing point](lua://TimingPoint), in milliseconds.
---@param tp TimingPoint The timing point to use.
---@return number? duration The duration between the given [timing point](lua://TimingPoint) and the next [timing point](lua://TimingPoint).
---@nodiscard
function map.GetTimingPointLength(tp) end

---##### (READ-ONLY)
---#### Returns the nearest time where the snap lines up with the given snap.
---@param forwards boolean Whether or not the nearest snap should be searched forwards or backwards in time.
---@param snap integer The denominator of the desired snap.
---@param time number The time to start looking from, in milliseconds.
---@return number? snapTime The nearest time which follows the given snap.
---@nodiscard
function map.GetNearestSnapTimeFromTime(forwards, snap, time) end

bit32 = {}

---##### (READ-ONLY)
---### Arithmetically bit shifts a number to the right by `disp` places.
---@param x number The number to shift.
---@param disp integer Shifts the number to the right by this many places. If `disp` is negative, shifts to the left instead.
---@return integer n
function bit32.arshift(x, disp) end

---##### (READ-ONLY)
---### Returns the bitwise `AND` of the parameters.
---@param ... number[]
---@return integer n
function bit32.band(...) end

---##### (READ-ONLY)
---### Returns the bitwise `NOT` of the parameters.
---@param x number
---@return integer n
function bit32.bnot(x) end

---##### (READ-ONLY)
---### Returns the bitwise `OR` of the parameters.
---@param ... number[]
---@return integer n
function bit32.bor(...) end

---##### (READ-ONLY)
---### Returns true if the bitwise `AND` of the two parameters is nonzero.
---@param ... number[]
---@return boolean
function bit32.test(...) end

---##### (READ-ONLY)
---### Returns the bitwise `XOR` of the parameters.
---@param ... number[]
---@return integer n
function bit32.bxor(...) end

---##### (READ-ONLY)
---### (From [Lua 5.2 Manual](https://www.lua.org/manual/5.2/manual.html#6.7)): Returns the unsigned number formed by the bits `field` to `field + width - 1` from `n`. Bits are numbered from `0` (least significant) to `31` (most significant). All accessed bits must be in the range `[0, 31]`. The default for width is `1`.
---@param n integer
---@param field integer
---@param width? integer
---@return integer n
function bit32.extract(n, field, width) end

---##### (READ-ONLY)
---### (From [Lua 5.2 Manual](https://www.lua.org/manual/5.2/manual.html#6.7)): Returns a copy of `n` with the bits `field` to `field + width - 1` replaced by the value `v`. See [bit32.extract](lua://bit32.extract) for details about `field` and `width`.
---@param n integer
---@param v integer
---@param field integer
---@param width? integer
---@return integer n
function bit32.replace(n, v, field, width) end

---##### (READ-ONLY)
---### Rotationally bit shifts a number to the left by `disp` places.
---@param x number The number to shift.
---@param disp integer Shifts the number to the left by this many places. If `disp` is negative, shifts to the right instead.
---@return integer n
function bit32.lrotate(x, disp) end

---##### (READ-ONLY)
---### Logically bit shifts a number to the left by `disp` places.
---@param x number The number to shift.
---@param disp integer Shifts the number to the left by this many places. If `disp` is negative, shifts to the right instead.
---@return integer n
function bit32.lshift(x, disp) end

---##### (READ-ONLY)
---### Rotationally bit shifts a number to the right by `disp` places.
---@param x number The number to shift.
---@param disp integer Shifts the number to the right by this many places. If `disp` is negative, shifts to the left instead.
---@return integer n
function bit32.rrotate(x, disp) end

---##### (READ-ONLY)
---### Logically bit shifts a number to the right by `disp` places.
---@param x number The number to shift.
---@param disp integer Shifts the number to the right by this many places. If `disp` is negative, shifts to the left instead.
---@return integer n
function bit32.rshift(x, disp) end

json = {}

---##### (READ-ONLY)
---### Returns a stringified version of `data`, no matter what it is. The string can then be passed around, and when the code needs it again, running [`json.parse`](lua://json.parse) will restore it.
---@param data any The data to stringify.
---@return string str The result.
function json.serialize(data) end

---##### (READ-ONLY)
---### Transforms a string into data that is manipulable by Lua. The string will almost always be obtained via [`json.serialize`](lua://json.serialize).
---@param str string The string to parse.
---@return any data The resulting data.
function json.parse(str) end

---##### (READ-ONLY)
---#### Invokes the function whenever any [editor action](lua://EditorAction) has occurred. This includes actions invoked by this and other plugins.
---@param fn fun(action: EditorAction, type: HistoryType, fromLua: boolean): nil The function that will be invoked during any [editor action](lua://EditorAction).
function listen(fn) end

---##### (READ-ONLY)
---#### Returns the value stored in the `config.yaml` file located in the plugin's directory.
---@return any data The contents within `config.yaml`.
---@nodiscard
function read() end

---##### (READ-ONLY)
---#### Stores the given value in the `config.yaml` file located in the plugin's directory. If multiple arguments are given, they are packed as an array before being stored.
---@param ... any The contents that should be stored.
function write(...) end

---##### (READ-ONLY)
---#### Evaluates the string as Lua code, in the current context. This function is similar to `eval`, but is unable to make function calls and is guaranteed to be pure.
---@param str string The string to evaluate.
---@return any value The resultant value.
---@nodiscard
function expr(str) end

---##### (READ-ONLY)
---#### Evaluates the string as Lua code, in the current context. This function is capable of doing anything that the script already can.
---@param str string The string to evaluate.
---@return any value The resultant value.
---@nodiscard
function eval(str) end

---##### (READ-ONLY)
---#### Displays a notification in Quaver.
---@param ... any The notification contents.
function print(...) end

---##### (READ-ONLY)
---#### Displays a notification in Quaver with a specific color and icon.
---@param notificationType "info"|"success"|"warning"|"error"|"info!"|"success!"|"warning!"|"error!" The type of notification sent. Appending an `!` will omit the plugin name in the notification.
---@param ... any The contents of the notification.
function print(notificationType, ...) end

---@enum EditorActionType
action_type  = {
    None = -1,
    PlaceHitObject = 0,
    RemoveHitObject = 1,
    ResizeLongNote = 2,
    RemoveHitObjectBatch = 3,
    PlaceHitObjectBatch = 4,
    FlipHitObjects = 5,
    SwapLanes = 6,
    MoveHitObjects = 7,
    AddHitsound = 8,
    RemoveHitsound = 9,
    CreateLayer = 10,
    RemoveLayer = 11,
    RenameLayer = 12,
    MoveToLayer = 13,
    ColorLayer = 14,
    ToggleLayerVisibility = 15,
    AddScrollVelocity = 16,
    RemoveScrollVelocity = 17,
    AddScrollVelocityBatch = 18,
    RemoveScrollVelocityBatch = 19,
    AddTimingPoint = 20,
    RemoveTimingPoint = 21,
    AddTimingPointBatch = 22,
    RemoveTimingPointBatch = 23,
    ChangePreviewTime = 24,
    ChangeTimingPointOffset = 25,
    ChangeTimingPointBpm = 26,
    ChangeTimingPointSignature = 27,
    ChangeTimingPointHidden = 28,
    ResetTimingPoint = 29,
    ChangeTimingPointBpmBatch = 30,
    ChangeTimingPointSignatureBatch = 31,
    ChangeTimingPointOffsetBatch = 32,
    ChangeScrollVelocityOffsetBatch = 33,
    ChangeScrollVelocityMultiplierBatch = 34,
    ApplyOffset = 35,
    ResnapHitObjects = 36,
    Batch = 37,
    ReverseHitObjects = 38,
    AddBookmark = 39,
    AddBookmarkBatch = 40,
    EditBookmark = 41,
    RemoveBookmark = 42,
    RemoveBookmarkBatch = 43,
    ChangeBookmarkOffsetBatch = 44,
    CreateTimingGroup = 45,
    RemoveTimingGroup = 46,
    RenameTimingGroup = 47,
    MoveObjectsToTimingGroup = 48,
    ColorTimingGroup = 49,
    AddTimingGroupBatch = 50,
    RemoveTimingGroupBatch = 51,
    AddScrollSpeedFactor = 52,
    AddScrollSpeedFactorBatch = 53,
    ChangeScrollSpeedFactorMultiplierBatch = 54,
    ChangeScrollSpeedFactorLaneMaskBatch = 55,
    ChangeScrollSpeedFactorOffsetBatch = 56,
    RemoveScrollSpeedFactor = 57,
    RemoveScrollSpeedFactorBatch = 58
}

---@enum Key
keys         = {
    None = 0,                  -- Reserved.
    Back = 8,                  -- BACKSPACE key.
    Tab = 9,                   -- TAB key.
    Enter = 13,                -- ENTER key.
    CapsLock = 20,             -- CAPS LOCK key.
    Escape = 27,               -- ESC key.
    Space = 32,                -- SPACEBAR key.
    PageUp = 33,               -- PAGE UP key.
    PageDown = 34,             -- PAGE DOWN key.
    End = 35,                  -- END key.
    Home = 36,                 -- HOME key.
    Left = 37,                 -- LEFT ARROW key.
    Up = 38,                   -- UP ARROW key.
    Right = 39,                -- RIGHT ARROW key.
    Down = 40,                 -- DOWN ARROW key.
    Select = 41,               -- SELECT key.
    Print = 42,                -- PRINT key.
    Execute = 43,              -- EXECUTE key.
    PrintScreen = 44,          -- PRINT SCREEN key.
    Insert = 45,               -- INS key.
    Delete = 46,               -- DEL key.
    Help = 47,                 -- HELP key.
    D0 = 48,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D1 = 49,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D2 = 50,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D3 = 51,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D4 = 52,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D5 = 53,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D6 = 54,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D7 = 55,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D8 = 56,                   -- Used for miscellaneous characters; it can vary by keyboard.
    D9 = 57,                   -- Used for miscellaneous characters; it can vary by keyboard.
    A = 65,                    -- A key.
    B = 66,                    -- B key.
    C = 67,                    -- C key.
    D = 68,                    -- D key.
    E = 69,                    -- E key.
    F = 70,                    -- F key.
    G = 71,                    -- G key.
    H = 72,                    -- H key.
    I = 73,                    -- I key.
    J = 74,                    -- J key.
    K = 75,                    -- K key.
    L = 76,                    -- L key.
    M = 77,                    -- M key.
    N = 78,                    -- N key.
    O = 79,                    -- O key.
    P = 80,                    -- P key.
    Q = 81,                    -- Q key.
    R = 82,                    -- R key.
    S = 83,                    -- S key.
    T = 84,                    -- T key.
    U = 85,                    -- U key.
    V = 86,                    -- V key.
    W = 87,                    -- W key.
    X = 88,                    -- X key.
    Y = 89,                    -- Y key.
    Z = 90,                    -- Z key.
    LeftWindows = 91,          -- Left Windows key.
    RightWindows = 92,         -- Right Windows key.
    Apps = 93,                 -- Applications key.
    Sleep = 95,                -- Computer Sleep key.
    NumPad0 = 96,              -- Numeric keypad 0 key.
    NumPad1 = 97,              -- Numeric keypad 1 key.
    NumPad2 = 98,              -- Numeric keypad 2 key.
    NumPad3 = 99,              -- Numeric keypad 3 key.
    NumPad4 = 100,             -- Numeric keypad 4 key.
    NumPad5 = 101,             -- Numeric keypad 5 key.
    NumPad6 = 102,             -- Numeric keypad 6 key.
    NumPad7 = 103,             -- Numeric keypad 7 key.
    NumPad8 = 104,             -- Numeric keypad 8 key.
    NumPad9 = 105,             -- Numeric keypad 9 key.
    Multiply = 106,            -- Multiply key.
    Add = 107,                 -- Add key.
    Separator = 108,           -- Separator key.
    Subtract = 109,            -- Subtract key.
    Decimal = 110,             -- Decimal key.
    Divide = 111,              -- Divide key.
    F1 = 112,                  -- F1 key.
    F2 = 113,                  -- F2 key.
    F3 = 114,                  -- F3 key.
    F4 = 115,                  -- F4 key.
    F5 = 116,                  -- F5 key.
    F6 = 117,                  -- F6 key.
    F7 = 118,                  -- F7 key.
    F8 = 119,                  -- F8 key.
    F9 = 120,                  -- F9 key.
    F10 = 121,                 -- F10 key.
    F11 = 122,                 -- F11 key.
    F12 = 123,                 -- F12 key.
    F13 = 124,                 -- F13 key.
    F14 = 125,                 -- F14 key.
    F15 = 126,                 -- F15 key.
    F16 = 127,                 -- F16 key.
    F17 = 128,                 -- F17 key.
    F18 = 129,                 -- F18 key.
    F19 = 130,                 -- F19 key.
    F20 = 131,                 -- F20 key.
    F21 = 132,                 -- F21 key.
    F22 = 133,                 -- F22 key.
    F23 = 134,                 -- F23 key.
    F24 = 135,                 -- F24 key.
    NumLock = 144,             -- NUM LOCK key.
    Scroll = 145,              -- SCROLL LOCK key.
    LeftShift = 160,           -- Left SHIFT key.
    RightShift = 161,          -- Right SHIFT key.
    LeftControl = 162,         -- Left CONTROL key.
    RightControl = 163,        -- Right CONTROL key.
    LeftAlt = 164,             -- Left ALT key.
    RightAlt = 165,            -- Right ALT key.
    BrowserBack = 166,         -- Browser Back key.
    BrowserForward = 167,      -- Browser Forward key.
    BrowserRefresh = 168,      -- Browser Refresh key.
    BrowserStop = 169,         -- Browser Stop key.
    BrowserSearch = 170,       -- Browser Search key.
    BrowserFavorites = 171,    -- Browser Favorites key.
    BrowserHome = 172,         -- Browser Start and Home key.
    VolumeMute = 173,          -- Volume Mute key.
    VolumeDown = 174,          -- Volume Down key.
    VolumeUp = 175,            -- Volume Up key.
    MediaNextTrack = 176,      -- Next Track key.
    MediaPreviousTrack = 177,  -- Previous Track key.
    MediaStop = 178,           -- Stop Media key.
    MediaPlayPause = 179,      -- Play/Pause Media key.
    LaunchMail = 180,          -- Start Mail key.
    SelectMedia = 181,         -- Select Media key.
    LaunchApplication1 = 182,  -- Start Application 1 key.
    LaunchApplication2 = 183,  -- Start Application 2 key.
    OemSemicolon = 186,        -- The OEM Semicolon key on a US standard keyboard.
    OemPlus = 187,             -- For any country/region, the '+' key.
    OemComma = 188,            -- For any country/region, the ',' key.
    OemMinus = 189,            -- For any country/region, the '-' key.
    OemPeriod = 190,           -- For any country/region, the '.' key.
    OemQuestion = 191,         -- The OEM question mark key on a US standard keyboard.
    OemTilde = 192,            -- The OEM tilde key on a US standard keyboard.
    OemColon = 193,            -- :
    OemExclamationMark = 194,  -- !
    PunctuatedU = 195,         -- ù
    Asterisk = 196,            -- *
    Caret = 197,               -- ^
    DollarSign = 198,          -- $
    OemCloseParenthesis = 199, -- )
    Squared = 200,             -- ²
    OemOpenBrackets = 219,     -- The OEM open bracket key on a US standard keyboard.
    OemPipe = 220,             -- The OEM pipe key on a US standard keyboard.
    OemCloseBrackets = 221,    -- The OEM close bracket key on a US standard keyboard.
    OemQuotes = 222,           -- The OEM singled/double quote key on a US standard keyboard.
    Oem8 = 223,                -- Used for miscellaneous characters; it can vary by keyboard.
    OemBackslash = 226,        -- The OEM angle bracket or backslash key on the RT 102 key keyboard.
    ProcessKey = 229,          -- IME PROCESS key.
    Attn = 246,                -- Attn key.
    Crsel = 247,               -- CrSel key.
    Exsel = 248,               -- ExSel key.
    EraseEof = 249,            -- Erase EOF key.
    Play = 250,                -- Play key.
    Zoom = 251,                -- Zoom key.
    Pa1 = 253,                 -- PA1 key.
    OemClear = 254,            -- CLEAR key.
    ChatPadGreen = 0xCA,       -- Green ChatPad key.
    ChatPadOrange = 0xCB,      -- Orange ChatPad key.
    Pause = 0x13,              -- PAUSE key.
    ImeConvert = 0x1c,         -- IME Convert key.
    ImeNoConvert = 0x1d,       -- IME NoConvert key.
    Kana = 0x15,               -- Kana key on Japanese keyboards.
    Kanji = 0x19,              -- Kanji key on Japanese keyboards.
    OemAuto = 0xf3,            -- OEM Auto key.
    OemCopy = 0xf2,            -- OEM Copy key.
    OemEnlW = 0xf4             -- OEM Enlarge Window key.
}

---@enum HistoryType
history_type = {
    New = 0,
    Redo = 1,
    Undo = 2,
}
