# class ScrollGroup

### `[ScrollGroup].InitialScrollVelocity: number`
 (READ-ONLY) The initial [sv](lua://ScrollVelocity) multiplier of this [scroll group](lua://ScrollGroup).
### `[ScrollGroup].ScrollVelocities: ScrollVelocity[]`
 (READ-ONLY) All [scroll velocities](lua://ScrollVelocity) within the [scroll group](lua://ScrollGroup).
### `[ScrollGroup].ScrollSpeedFactors: ScrollSpeedFactor[]`
 (READ-ONLY) All [scroll speed factors](lua://ScrollSpeedFactor) within the [scroll group](lua://ScrollGroup).
### `[ScrollGroup].GetScrollVelocityAt: fun(time: number): ScrollVelocity`
 (READ-ONLY) Gets the nearest [scroll velocity](lua://ScrollVelocity) before the `time` parameter.
### `[ScrollGroup].GetScrollSpeedFactorAt: fun(time: number): ScrollSpeedFactor`
 (READ-ONLY) Gets the nearest [scroll speed factor](lua://ScrollSpeedFactor) before the `time` parameter.
### `[ScrollGroup].ColorRgb: string`
 (READ-ONLY) A string of format `r,g,b` representing the color of the [editor layer](lua://EditorLayer). `r`, `g`, and `b` are integers within [0,255].
### `[ScrollGroup].Hidden: boolean`
 (READ-ONLY) Determines whether or not the timing group color is visible in the editor.

# class ScrollSpeedFactor

### `[ScrollSpeedFactor].StartTime: number`
 (READ-ONLY) The time at which the [scroll speed factor](lua://ScrollSpeedFactor) takes effect.
### `[ScrollSpeedFactor].Multiplier: number`
 (READ-ONLY) The factor at which to multiply the player's scroll speed.

# class ScrollVelocity

### `[ScrollVelocity].StartTime: number`
 (READ-ONLY) The time at which the [scroll velocity](lua://ScrollVelocity) takes effect.
### `[ScrollVelocity].Multiplier: number`
 (READ-ONLY) The factor at which to multiply the player's [scroll velocity](lua://ScrollVelocity).

# class Bookmark

### `[Bookmark].StartTime: integer`
 (READ-ONLY) The time the [bookmark](lua://Bookmark) is attached to.
### `[Bookmark].Note: string`
 (READ-ONLY) The contents of the [bookmark](lua://Bookmark).

# class HitObject

### `[HitObject].StartTime: integer`
 (READ-ONLY) The time the note is present.
### `[HitObject].Lane: NoteLane`
 (READ-ONLY) The lane the note is in.
### `[HitObject].EndTime: number`
 (READ-ONLY) The time the long note ends. If this note is not a long note, this value is 0.
### `[HitObject].HitSound: HitSounds`
 (READ-ONLY) A bitwise mask representing hitsounds.
### `[HitObject].EditorLayer: integer`
 (READ-ONLY) The id of the [editor layer](lua://EditorLayer) this note is in.
### `[HitObject].IsLongNote: boolean`
 (READ-ONLY) `true` if this note is a long note, false otherwise.
### `[HitObject].TimingGroup: string`
 (READ-ONLY) The id of the [timing group](lua://ScrollGroup) that this note belongs to.

# class TimingPoint

### `[TimingPoint].StartTime: number`
 (READ-ONLY) The time in which the [timing point](lua://TimingPoint) is located.
### `[TimingPoint].Bpm: number`
 (READ-ONLY) The beats per minute, or bpm of the [timing point](lua://TimingPoint).
### `[TimingPoint].Signature: number`
 (READ-ONLY) The time signature of the [timing point](lua://TimingPoint).
### `[TimingPoint].Hidden: boolean`
 (READ-ONLY) Determines whether or not the timing lines are rendered.

# class EditorLayer

### `[EditorLayer].Name: string`
 (READ-ONLY) The name of the [editor layer](lua://EditorLayer).
### `[EditorLayer].Hidden: boolean`
 (READ-ONLY) `true` if the layer is hidden within the editor.
### `[EditorLayer].ColorRgb: string`
 (READ-ONLY) A string of format `r,g,b` representing the color of the [editor layer](lua://EditorLayer). `r`, `g`, and `b` are integers within [0,255].

# class EditorAction

### `[EditorAction].Type: string`
 (READ-ONLY) The type of action that was performed.
### `[EditorAction].Perform: fun(): nil`
 (READ-ONLY) Performs the action.

# class Vector2

### `[Vector2].x: number`
### `[Vector2].y: number`

# class Vector3

### `[Vector3].x: number`
### `[Vector3].y: number`
### `[Vector3].z: number`

# class Vector4

### `[Vector4].x: number`
### `[Vector4].y: number`
### `[Vector4].z: number`
### `[Vector4].w: number`



# global vector
## `function vector.Abs(v)`
(READ-ONLY) Returns the absolute value of each element of a vector.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The initial vector.

## `function vector.Add(v1, v2)`
(READ-ONLY) Returns the sum of two vectors.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Clamp(v, min, max)`
(READ-ONLY) Clamps a vector between two others.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to clamp.
- `min: number | Vector2 | Vector3 | Vector4` - The floor of the resultant vector.
- `max: number | Vector2 | Vector3 | Vector4` - The ceiling of the resultant vector.

## `function vector.Cross(v1, v2)`
(READ-ONLY) Takes a cross product between two vectors (only works with [`Vector3`](lua://Vector3)).
### Parameters:
- `v1: Vector3` - The first vector.
- `v2: Vector3` - The second vector.

## `function vector.Distance(v1, v2)`
(READ-ONLY) Finds the distance between two vectors.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.DistanceSquared(v1, v2)`
(READ-ONLY) Finds the distance between two vectors, squared.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Divide(v1, v2)`
(READ-ONLY) Divides two vectors, termwise.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Dot(v1, v2)`
(READ-ONLY) Takes the dot product of two vectors; that is, multiplies the two vectors termwise then returns the sum of the resulting terms.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Length(v)`
(READ-ONLY) Determines the length of a vector.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to measure.

## `function vector.Lerp(v1, v2, f)`
(READ-ONLY) Returns a vector that is `(f * 100)%` of the way from travelling between `v1` and `v2`.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
- `f: number` - A number within [0-1] which determines the weight of `v2`.

## `function vector.Max(v1, v2)`
(READ-ONLY) Returns a vector which has the maximum value of both vectors, termwise.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Min(v1, v2)`
(READ-ONLY) Returns a vector which has the minimum value of both vectors, termwise.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Modulo(v1, v2)`
(READ-ONLY) Returns a vector which has the remainder of the first vector divided by the second, termwise.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Multiply(v1, v2)`
(READ-ONLY) Multiplies the two vectors termwise and returns the product.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Negate(v)`
(READ-ONLY) Negates the given vector termwise.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to negate.

## `function vector.New(s1, s2, s3, s4)`
(READ-ONLY) Creates a new [`Vector4`](lua://Vector4).
### Parameters:
- `s1: number` - The first element.
- `s2: number` - The second element.
- `s3: number` - The third element.
- `s4: number` - The fourth element.

## `function vector.Normalize(v)`
(READ-ONLY) Normalizes the given vector such that it has a magnitude of 1.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to normalize.

## `function vector.One(n)`
(READ-ONLY) Returns a [`Vector2`](lua://Vector2), with all elements being `1`.
### Parameters:
- `n: number` - Any number.

## `function vector.Reflect(v, norm)`
(READ-ONLY) Reflects a vector across a surface given by its normal vector and pivot point [`vector.Zero`](lua://vector.Zero).
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to reflect.
- `norm: number | Vector2 | Vector3 | Vector4` - The normal vector of the surface in which to reflect `v`.

## `function vector.RemEuclid(v1, v2)`
(READ-ONLY) Returns a vector which has the euclidean remainder of the first vector divided by the second, termwise. A euclidean remainder is like a normal remainder, but if the closest normal remainder is negative then the divisor is added to make it positive.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.SquareRoot(v)`
(READ-ONLY) Square roots the given vector, termwise.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to root.

## `function vector.Subtract(v1, v2)`
(READ-ONLY) Returns the difference of two vectors.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.

## `function vector.Table(v)`
(READ-ONLY) Coerces a [`Vector4`](lua://Vector4) to become a numerically-indexed table.
### Parameters:
- `v: Vector4` - The vector to pack.

## `function vector.UnitW(dim)`
(READ-ONLY) Creates a unit vector in the `W` direction with the given dimension.
### Parameters:
- `dim: Vector2 | Vector3 | Vector4` - The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.

## `function vector.UnitX(dim)`
(READ-ONLY) Creates a unit vector in the `X` direction with the given dimension.
### Parameters:
- `dim: Vector2 | Vector3 | Vector4` - The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.

## `function vector.UnitY(dim)`
(READ-ONLY) Creates a unit vector in the `Y` direction with the given dimension.
### Parameters:
- `dim: Vector2 | Vector3 | Vector4` - The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.

## `function vector.UnitZ(dim)`
(READ-ONLY) Creates a unit vector in the `Z` direction with the given dimension.
### Parameters:
- `dim: Vector2 | Vector3 | Vector4` - The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.

## `function vector.Zero(n)`
(READ-ONLY) Returns a [`Vector2`](lua://Vector2), with all elements being `0`.
### Parameters:
- `n: number` - Any number.# global actions
## `function actions.Perform(action)`
(READ-ONLY) Performs a given [editor action](lua://EditorAction).
### Parameters:
- `action: EditorAction` - The [editor action](lua://EditorAction) to perform.

## `function actions.PerformBatch(actionList)`
(READ-ONLY) Performs a given set of [editor actions](lua://EditorAction).
### Parameters:
- `actionList: EditorAction[]` - The [editor actions](lua://EditorAction) to perform.

## `function actions.Undo()`
(READ-ONLY) Undoes the most recent [editor action](lua://EditorAction).
### Parameters:


## `function actions.Redo()`
(READ-ONLY) Redoes the most recent undo.
### Parameters:


## `function actions.PlaceHitObject(lane, startTime,`
(READ-ONLY) Places a new [hit object](lua://HitObject), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `lane: NoteLane` - The lane of the [hit object](lua://HitObject).
- `startTime: integer` - The start time of the [hit object](lua://HitObject).
- `endTime?: integer` - If placing a rice note, this value should be 0. Otherwise, this should be the time the long note ends.
- `editorLayer?: integer` - The id of the layer in which the [hit object](lua://HitObject) will lie.
- `hitsounds?: HitSounds` - The hitsounds attached to the [hit object](lua://HitObject).
- `tgId?: integer` - The id of the [timing group](lua://ScrollGroup) this [hit object](lua://HitObject) will be in.

## `function actions.PlaceHitObjectBatch(hos)`
(READ-ONLY) Places a given set of [hit objects](lua://HitObject), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `hos: HitObject[]` - The [hit objects](lua://HitObject) to place, which must be created via [`utils.CreateHitObject`](lua://utils.CreateHitObject).

## `function actions.RemoveHitObject(ho)`
(READ-ONLY) Removes a given [hit object](lua://HitObject), assuming it already exists.
### Parameters:
- `ho: HitObject` - The [hit object](lua://HitObject) to remove, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.

## `function actions.RemoveHitObjectBatch(hos)`
(READ-ONLY) Removes a given set of [hit objects](lua://HitObject), assuming they already exist.
### Parameters:
- `hos: HitObject[]` - The [hit objects](lua://HitObject) to remove, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.

## `function actions.ResizeLongNote(ho, oldEndTime, newEndTime)`
(READ-ONLY) Changes the length of a long-note type [hit object](lua://HitObject).
### Parameters:
- `ho: HitObject` - The [hit object](lua://HitObject) to modify, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
- `oldEndTime: integer` - The original end time of the [hit object](lua://HitObject), or `hitObject.endTime`.
- `newEndTime: integer` - The desired time to move the LN end to.

## `function actions.PlaceScrollVelocity(sv)`
(READ-ONLY) Places a given [scroll velocity](lua://ScrollVelocity), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `sv: ScrollVelocity` - The [scroll velocity](lua://ScrollVelocity) to place, which must be created via [`utils.CreateScrollVelocity`](lua://utils.CreateScrollVelocity).

## `function actions.PlaceScrollVelocityBatch(svs)`
(READ-ONLY) Places a given set of [scroll velocities](lua://ScrollVelocity), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `svs: ScrollVelocity[]` - The [scroll velocities](lua://ScrollVelocity) to place, which must be created via [`utils.CreateScrollVelocity`](lua://utils.CreateScrollVelocity).

## `function actions.RemoveScrollVelocity(sv)`
(READ-ONLY) Removes a given [scroll velocity](lua://ScrollVelocity), assuming it already exists.
### Parameters:
- `sv: ScrollVelocity` - The [scroll velocity](lua://ScrollVelocity) to remove, which must be obtained via [`map.ScrollVelocities`](lua://map.ScrollVelocities) or something similar.

## `function actions.RemoveScrollVelocityBatch(svs)`
(READ-ONLY) Removes a given set of [scroll velocities](lua://ScrollVelocity), assuming they already exist.
### Parameters:
- `svs: ScrollVelocity[]` - The [scroll velocities](lua://ScrollVelocity) to remove, which must be obtained via [`map.ScrollVelocities`](lua://map.ScrollVelocities) or something similar.

## `function actions.PlaceTimingPoint(tp)`
(READ-ONLY) Places a given [timing point](lua://TimingPoint), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `tp: TimingPoint` - The [timing point](lua://TimingPoint) to place, which must be created via [`utils.CreateTimingPoint`](lua://utils.CreateTimingPoint).

## `function actions.PlaceTimingPointBatch(tps)`
(READ-ONLY) Places a given set of [timing points](lua://TimingPoint), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `tps: TimingPoint[]` - The [timing points](lua://TimingPoint) to place, which must be created via [`utils.CreateTimingPoint`](lua://utils.CreateTimingPoint).

## `function actions.RemoveTimingPoint(tp)`
(READ-ONLY) Removes a given [timing point](lua://TimingPoint), assuming it already exists.
### Parameters:
- `tp: TimingPoint` - The [timing point](lua://TimingPoint) to remove, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.

## `function actions.RemoveTimingPointBatch(tps)`
(READ-ONLY) Removes a given set of [timing points](lua://TimingPoint), assuming they already exist.
### Parameters:
- `tps: TimingPoint[]` - The [timing points](lua://TimingPoint) to remove, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.

## `function actions.ChangeTimingPointOffset(tp, newTime)`
(READ-ONLY) Changes the `startTime` of a given [timing point](lua://TimingPoint).
### Parameters:
- `tp: TimingPoint` - The [timing point](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
- `newTime: number` - The new `startTime`.

## `function actions.ChangeTimingPointBpm(tp, newBpm)`
(READ-ONLY) Changes the `Bpm` of a given [timing point](lua://TimingPoint).
### Parameters:
- `tp: TimingPoint` - The [timing point](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
- `newBpm: number` - The new `Bpm`.

## `function actions.ChangeTimingPointHidden(tp, newHidden)`
(READ-ONLY) Changes if a given [timing point](lua://TimingPoint) should be `Hidden`.
### Parameters:
- `tp: TimingPoint` - The [timing point](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
- `newHidden: boolean` - The new `Hidden` property.

## `function actions.ChangeTimingPointOffsetBatch(tps, newTime)`
(READ-ONLY) Changes the `startTime` of the given [timing points](lua://TimingPoint).
### Parameters:
- `tps: TimingPoint[]` - The [timing points](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
- `newTime: number` - The new `startTime`.

## `function actions.ChangeTimingPointBpmBatch(tps, newBpm)`
(READ-ONLY) Changes the `Bpm` of the given [timing points](lua://TimingPoint).
### Parameters:
- `tps: TimingPoint[]` - The [timing points](lua://TimingPoint) to modify, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.
- `newBpm: number` - The new `Bpm`.

## `function actions.ResetTimingPoint(tp)`
(READ-ONLY) Resets the given[timing point](lua://TimingPoint).
### Parameters:
- `tp: TimingPoint` - The [timing point](lua://TimingPoint) to reset, which must be obtained via [`map.TimingPoints`](lua://map.TimingPoints) or something similar.

## `function actions.GoToObjects(input)`
(READ-ONLY) Moves the [`song time`](lua://state.SongTime) to the designated objects.
### Parameters:
- `input: string` - The input string with navigation directions, usually obtained from copying notes in-game.

## `function actions.SetHitObjectSelection(hos)`
(READ-ONLY) Sets the [hit object selection](lua://state.SelectedHitObjects) to be the [hit objects](lua://HitObject) passed as the argument.
### Parameters:
- `hos: HitObject[]` - The [hit objects](lua://HitObject) to select, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.

## `function actions.SetPreviewTime(time)`
(READ-ONLY) Sets the preview time of the map.
### Parameters:
- `time: integer` - The preview time, in milliseconds.

## `function actions.CreateLayer(layer, index)`
(READ-ONLY) Creates the given [editor layer](lua://EditorLayer), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `layer: EditorLayer` - The [editor layer](lua://EditorLayer) to create, which must be created via [`utils.CreateEditorLayer`](lua://utils.CreateEditorLayer).
- `index?: integer` - An optional index for the [editor layer](lua://EditorLayer) to be placed in. If none is given, the next available index is used.

## `function actions.RemoveLayer(layer)`
(READ-ONLY) Removes the given [editor layer](lua://EditorLayer), assuming it exists.
### Parameters:
- `layer: EditorLayer` - The [editor layer](lua://EditorLayer) to remove, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.

## `function actions.RenameLayer(layer, newName)`
(READ-ONLY) Renames the given [editor layer](lua://EditorLayer), assuming it exists.
### Parameters:
- `layer: EditorLayer` - The [editor layer](lua://EditorLayer) to rename, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.
- `newName: string` - The new name the [editor layer](lua://EditorLayer) should have.

## `function actions.MoveHitObjectsToLayer(layer, hos)`
(READ-ONLY) Moves the given [hit objects](lua://HitObject) to the given [editor layer](lua://EditorLayer).
### Parameters:
- `layer: EditorLayer` - The [editor layer](lua://EditorLayer) to move the [hit objects](lua://HitObject) to, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.
- `hos: HitObject[]` - The [hit objects](lua://HitObject) to move, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.

## `function actions.ChangeLayerColor(layer, r, g, b)`
(READ-ONLY) Changes the color of the given [editor layer](lua://EditorLayer).
### Parameters:
- `layer: EditorLayer` - The [editor layer](lua://EditorLayer) to alter the color of, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.
- `r: integer` - The strength of the red part of the color. Should be within [0-255].
- `g: integer` - The strength of the green part of the color. Should be within [0-255].
- `b: integer` - The strength of the blue part of the color. Should be within [0-255].

## `function actions.ToggleLayerVisibility(layer)`
(READ-ONLY) Toggles the visibility of the given [editor layer](lua://EditorLayer).
### Parameters:
- `layer: EditorLayer` - The [editor layer](lua://EditorLayer) to alter, which must be obtained via [`map.EditorLayers`](lua://map.EditorLayers) or something similar.

## `function actions.ResnapNotes(snaps, hos)`
(READ-ONLY) Snaps the given [hit objects](lua://HitObject) to the nearest snap within the table of `snaps`.
### Parameters:
- `snaps: integer[]` - The list of snap denominators to use.
- `hos: HitObject[]` - The [hit objects](lua://HitObject) to snap, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.

## `function actions.AddBookmark(time, info)`
(READ-ONLY) Places a new [bookmark](lua://Bookmark), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `time: integer` - The time to place the [bookmark](lua://Bookmark).
- `info: string` - The content of the [bookmark](lua://Bookmark).

## `function actions.AddBookmarkBatch(bms)`
(READ-ONLY) Places a given set of [bookmarks](lua://Bookmark), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `bms: Bookmark[]` - The [bookmarks](lua://Bookmark) to place, which must be created via [`utils.CreateBookmark`](lua://utils.CreateBookmark).

## `function actions.RemoveBookmark(bm)`
(READ-ONLY) Removes a given [bookmark](lua://Bookmark), assuming it exists.
### Parameters:
- `bm: Bookmark` - The [bookmark](lua://Bookmark) to remove, which must be obtained via [`map.Bookmarks`](lua://map.Bookmarks) or something similar.

## `function actions.RemoveBookmarkBatch(bms)`
(READ-ONLY) Removes a given set of [bookmarks](lua://Bookmark), assuming they exist.
### Parameters:
- `bms: Bookmark[]` - The [bookmarks](lua://Bookmark) to remove, which must be obtained via [`map.Bookmarks`](lua://map.Bookmarks) or something similar.

## `function actions.EditBookmark(bm, newNote)`
(READ-ONLY) Changes the contents of a [bookmark](lua://Bookmark).
### Parameters:
- `bm: Bookmark` - The [bookmark](lua://Bookmark) to edit, which must be obtained via [`map.Bookmarks`](lua://map.Bookmarks) or something similar.
- `newNote: string` - The new contents of the [bookmark](lua://Bookmark).

## `function actions.ChangeBookmarkBatchOffset(bms, offset)`
(READ-ONLY) Changes the start time of the given [bookmarks](lua://Bookmark).
### Parameters:
- `bms: Bookmark[]` - The [bookmarks](lua://Bookmark) to edit, which must be obtained via [`map.Bookmarks`](lua://map.Bookmarks) or something similar.
- `offset: integer` - The new `startTime` of the [bookmarks](lua://Bookmark).

## `function actions.PlaceTimingGroup(id, tg, hos)`
(READ-ONLY) Places the given [timing group](lua://ScrollGroup), without the need to create an [editor action](lua://EditorAction).
### Parameters:
- `id: string` - The id of the [timing group](lua://ScrollGroup) to place, usually generated by [`utils.GenerateTimingGroupId`](lua://utils.GenerateTimingGroupId).
- `tg: ScrollGroup` - The [timing group](lua://ScrollGroup) to place, which must be created via [`utils.CreateScrollGroup`](lua://utils.CreateScrollGroup).
- `hos: HitObject[]` - A list of [hit objects](lua://HitObject) that should be placed within the [timing group](lua://ScrollGroup), which must be created via [`utils.CreateHitObject`](lua://utils.CreateHitObject), or obtained via [`map.HitObjects](lua://map.HitObjects) or something similar.

## `function actions.RemoveTimingGroup(id)`
(READ-ONLY) Removes the given [timing group](lua://ScrollGroup), assuming it exists.
### Parameters:
- `id: string` - The id of the [timing group](lua://ScrollGroup) to remove, which must be obtained via [`state.SelectedScrollGroup`](lua://state.SelectedScrollGroup) or something similar.

## `function actions.RenameTimingGroup(id, newId)`
(READ-ONLY) Renames the given [timing group](lua://ScrollGroup).
### Parameters:
- `id: string` - The id of the [timing group](lua://ScrollGroup) to rename, which must be obtained via [`state.SelectedScrollGroup`](lua://state.SelectedScrollGroup) or something similar.
- `newId: string` - The new id.

## `function actions.ChangeTimingGroupColor(id, r, g, b)`
(READ-ONLY) Changes the color of the given [timing group](lua://ScrollGroup).
### Parameters:
- `id: string` - The id of the [timing group](lua://ScrollGroup) to alter the color of, which must be obtained via [`state.SelectedScrollGroup`](lua://state.SelectedScrollGroup) or something similar.
- `r: integer` - The strength of the red part of the color. Should be within [0-255].
- `g: integer` - The strength of the green part of the color. Should be within [0-255].
- `b: integer` - The strength of the blue part of the color. Should be within [0-255].

## `function actions.MoveObjectsToTimingGroup(hos, id)`
(READ-ONLY) Moves all given [hit objects](lua://HitObject) to the given [timing group](lua://ScrollGroup).
### Parameters:
- `hos: HitObject[]` - The [hit objects](lua://HitObject) to move, which must be obtained via [`map.HitObjects`](lua://map.HitObjects) or something similar.
- `id: string` - The id of the [timing group](lua://ScrollGroup) to move the [hit objects](lua://HitObject) to, which must be obtained via [`state.SelectedScrollGroup`](lua://state.SelectedScrollGroup) or something similar.# global state
## `function state.SetValue(key, value)`
(READ-ONLY) Stores a value that can be retrieved by [`state.GetValue`](lua://state.GetValue). Mainly used to persist data between hot-reloads.
### Parameters:
- `key: string` - The identifier for this particular value.
- `value: any` - The value to store.

## `function state.GetValue(key, fallback)`
(READ-ONLY) Gets a value previously stored by [`state.SetValue`](lua://state.SetValue). If the value doesn't exist, return `fallback` instead. Note that `nil` is considered a value, meaning if you store `nil` using [`state.SetValue`](lua://state.SetValue), then the `fallback` will not be used.
### Parameters:
- `key: string` - The identifier for the value set by `state.SetValue`.
- `fallback?: T` - An optional term to return, if the result is `nil`.# global utils
## `function utils.CreateScrollVelocity(startTime, multiplier)`
(READ-ONLY) Creates a [scroll velocity](lua://ScrollVelocity), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
### Parameters:
- `startTime: number` - The time to create the [scroll velocity](lua://ScrollVelocity), in milliseconds.
- `multiplier: number` - The factor at which to scale the player's [scroll velocity](lua://ScrollVelocity).

## `function utils.CreateScrollSpeedFactor(startTime, multiplier)`
(READ-ONLY) Creates a [scroll speed factor](lua://ScrollSpeedFactor), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
### Parameters:
- `startTime: number` - The time to create the [scroll speed factor](lua://ScrollSpeedFactor), in milliseconds.
- `multiplier: number` - The factor at which to scale the player's scroll speed.

## `function utils.CreateHitObject(startTime, lane,`
(READ-ONLY) Creates a [hit object](lua://HitObject), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
### Parameters:
- `startTime: integer` - The time to create the note, in milliseconds.
- `lane: NoteLane` - The lane to create the note in.
- `endTime?: integer` - If given and non-zero, the note becomes a long note. This parameter determines when the long note will end.
- `hitsounds?: HitSounds` - The hitsounds that should be applied to the note.
- `editorLayer?: integer` - The index of the [editor layer](lua://EditorLayer) that this note should be added to.

## `function utils.CreateTimingPoint(startTime, bpm, signature, hidden)`
(READ-ONLY) Creates a [[timing point](lua://TimingPoint)](lua://TimingPoint), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
### Parameters:
- `startTime: number` - The time to create the [timing point](lua://TimingPoint), in milliseconds.
- `bpm: number` - The beats per minute of the [timing point](lua://TimingPoint).
- `signature?: integer` - The time signature of the [timing point](lua://TimingPoint).
- `hidden?: boolean` - Whether or not to hide the timing lines in gameplay.

## `function utils.CreateEditorLayer(name, hidden, colorRgb)`
(READ-ONLY) Creates an [editor layer](lua://EditorLayer), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
### Parameters:
- `name: string` - The name of this layer.
- `hidden?: boolean` - Whether or not to hide this layer in the editor.
- `colorRgb?: string` - The color of the [editor layer](lua://EditorLayer). This parameter should be a string of the form `r,g,b`, where `r`, `g`, and `b` are integers within [0,255].

## `function utils.CreateBookmark(startTime, note)`
(READ-ONLY) Creates a [bookmark](lua://Bookmark), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
### Parameters:
- `startTime: number` - The time to create the [bookmark](lua://Bookmark), in milliseconds.
- `note: string` - The contents of the [bookmark](lua://Bookmark).

## `function utils.CreateScrollGroup(svs, initialSV, colorRgb)`
(READ-ONLY) Creates a [scroll group](lua://ScrollGroup), to later be placed into an [`EditorAction`](lua://utils.CreateEditorAction) and executed.
### Parameters:
- `svs: ScrollVelocity[]` - The [scroll velocities](lua://ScrollVelocity) to add to the [scroll group](lua://ScrollGroup).
- `initialSV?: number` - The initial [scroll velocity](lua://ScrollVelocity) of the [scroll group](lua://ScrollGroup).
- `colorRgb?: string` - The color of the [scroll group](lua://ScrollGroup). This parameter should be a string of the form `r,g,b`, where `r`, `g`, and `b` are integers within [0,255].

## `function utils.CreateEditorAction(type, ...)`
(READ-ONLY) Creates an [editor action](lua://EditorAction), to later be executed with [`actions.Perform`](lua://actions.Perform).
### Parameters:
- `type: EditorActionType` - The type of action to perform.

## `function utils.MillisecondsToTime(time)`
(READ-ONLY) Returns a formatted version of the inputted `time`.
### Parameters:
- `time: number` - The elapsed time to format, in milliseconds.

## `function utils.IsKeyPressed(key)`
(READ-ONLY) Returns `true` if the given key is pressed within the given frame.
### Parameters:
- `key: Key` - 

## `function utils.IsKeyReleased(key)`
(READ-ONLY) Returns `true` if the given key is released within the given frame.
### Parameters:
- `key: Key` - 

## `function utils.IsKeyDown(key)`
(READ-ONLY) Returns `true` if the given key is held down within the given frame.
### Parameters:
- `key: Key` - 

## `function utils.IsKeyUp(key)`
(READ-ONLY) Returns `true` if the given key is not held down within the given frame.
### Parameters:
- `key: Key` - 

## `function utils.GenerateTimingGroupId(prefix)`
(READ-ONLY) Returns a unique `tgId` with the given prefix. If no prefix is given, defaults to `SG_`.
### Parameters:
- `prefix?: string` - 

## `function utils.GenerateTimingGroupIds(count, prefix)`
(READ-ONLY) Returns `count` number of `tgIds` with the given prefix. If no prefix is given, defaults to `SG_`.
### Parameters:
- `count: integer` - 
- `prefix?: string` - # global map
## `function map.ToString()`
(READ-ONLY) Returns the map metadata in the form of `{Artist} - {Title} [{Difficulty}]`.
### Parameters:


## `function map.GetKeyCount(includeScratch)`
(READ-ONLY) Returns the number of possible keys within the map.
### Parameters:
- `includeScratch?: boolean` - Whether or not to include the scratch lane. This should almost never be true.

## `function map.GetCommonBpm()`
(READ-ONLY) Returns the most common BPM in the map, determined by how much time a particular BPM is used.
### Parameters:


## `function map.GetTimingPointAt(time)`
(READ-ONLY) Returns the nearest [timing point](lua://TimingPoint) before the given `time`.
### Parameters:
- `time: number` - The time to start looking from, in milliseconds.

## `function map.GetScrollVelocityAt(time, tgId)`
(READ-ONLY) Returns the nearest [scroll velocity](lua://ScrollVelocity) before the given `time`, within `tgId`. If `tgId` is not given, it will search within the currently selected [scroll group](lua://ScrollGroup).
### Parameters:
- `time: number` - The time to start looking from, in milliseconds.
- `tgId?: string` - The [timing group](lua://ScrollGroup) to look within. If this option is omitted, the function will search within the currently selected [timing group](lua://ScrollGroup).

## `function map.GetScrollSpeedFactorAt(time, tgId)`
(READ-ONLY) Returns the nearest [scroll speed factor](lua://ScrollSpeedFactor) before the given `time`, within `tgId`. If `tgId` is not given, it will search within the currently selected [scroll group](lua://ScrollGroup).
### Parameters:
- `time: number` - The time to start looking from, in milliseconds.
- `tgId?: string` - The [timing group](lua://ScrollGroup) to look within. If this option is omitted, the function will search within the currently selected [timing group](lua://ScrollGroup).

## `function map.GetTimingGroup(tgId)`
(READ-ONLY) Returns the [timing group](lua://ScrollGroup) corresponding with the given id.
### Parameters:
- `tgId: string` - The id to search with.

## `function map.GetTimingGroupIds()`
(READ-ONLY) Returns a list of all [timing group](lua://ScrollGroup) ids.
### Parameters:


## `function map.GetTimingGroupObjects(tgId)`
(READ-ONLY) Returns all [hit objects](lua://HitObject) within the id's corresponding [timing group](lua://ScrollGroup).
### Parameters:
- `tgId: string` - The [timing group](lua://ScrollGroup) to look within.

## `function map.GetBookmarkAt(time)`
(READ-ONLY) Returns the nearest [bookmark](lua://Bookmark) before the given `time`.
### Parameters:
- `time: number` - The time to start looking from, in milliseconds.

## `function map.GetTimingPointLength(tp)`
(READ-ONLY) Returns the length of the given [timing point](lua://TimingPoint), in milliseconds.
### Parameters:
- `tp: TimingPoint` - The timing point to use.

## `function map.GetNearestSnapTimeFromTime(forwards, snap, time)`
(READ-ONLY) Returns the nearest time where the snap lines up with the given snap.
### Parameters:
- `forwards: boolean` - Whether or not the nearest snap should be searched forwards or backwards in time.
- `snap: integer` - The denominator of the desired snap.
- `time: number` - The time to start looking from, in milliseconds.