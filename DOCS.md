# Table of Contents:
### 1. Classes:
  - [ScrollGroup](#class-scrollgroup)
  - [ScrollSpeedFactor](#class-scrollspeedfactor)
  - [ScrollVelocity](#class-scrollvelocity)
  - [Bookmark](#class-bookmark)
  - [HitObject](#class-hitobject)
  - [TimingPoint](#class-timingpoint)
  - [EditorLayer](#class-editorlayer)
  - [EditorAction](#class-editoraction)
  - [Vector2](#class-vector2)
  - [Vector3](#class-vector3)
  - [Vector4](#class-vector4)
### 2. [Vector Global](#global-vector)
  - Attributes:
    - None
  - Functions:
    - [vector.Abs](#function-vector-abs)
    - [vector.Add](#function-vector-add)
    - [vector.Clamp](#function-vector-clamp)
    - [vector.Cross](#function-vector-cross)
    - [vector.Distance](#function-vector-distance)
    - [vector.DistanceSquared](#function-vector-distancesquared)
    - [vector.Divide](#function-vector-divide)
    - [vector.Dot](#function-vector-dot)
    - [vector.Length](#function-vector-length)
    - [vector.Lerp](#function-vector-lerp)
    - [vector.Max](#function-vector-max)
    - [vector.Min](#function-vector-min)
    - [vector.Modulo](#function-vector-modulo)
    - [vector.Multiply](#function-vector-multiply)
    - [vector.Negate](#function-vector-negate)
    - [vector.New](#function-vector-new)
    - [vector.New](#function-vector-new)
    - [vector.New](#function-vector-new)
    - [vector.Normalize](#function-vector-normalize)
    - [vector.One](#function-vector-one)
    - [vector.One](#function-vector-one)
    - [vector.Reflect](#function-vector-reflect)
    - [vector.RemEuclid](#function-vector-remeuclid)
    - [vector.SquareRoot](#function-vector-squareroot)
    - [vector.Subtract](#function-vector-subtract)
    - [vector.Table](#function-vector-table)
    - [vector.Table](#function-vector-table)
    - [vector.Table](#function-vector-table)
    - [vector.UnitW](#function-vector-unitw)
    - [vector.UnitX](#function-vector-unitx)
    - [vector.UnitY](#function-vector-unity)
    - [vector.UnitZ](#function-vector-unitz)
    - [vector.Zero](#function-vector-zero)
    - [vector.Zero](#function-vector-zero)
### 3. [Actions Global](#global-actions)
  - Attributes:
    - None
  - Functions:
    - [actions.Perform](#function-actions-perform)
    - [actions.PerformBatch](#function-actions-performbatch)
    - [actions.Undo](#function-actions-undo)
    - [actions.Redo](#function-actions-redo)
    - [actions.PlaceHitObject](#function-actions-placehitobject)
    - [actions.PlaceHitObject](#function-actions-placehitobject)
    - [actions.PlaceHitObjectBatch](#function-actions-placehitobjectbatch)
    - [actions.RemoveHitObject](#function-actions-removehitobject)
    - [actions.RemoveHitObjectBatch](#function-actions-removehitobjectbatch)
    - [actions.ResizeLongNote](#function-actions-resizelongnote)
    - [actions.PlaceScrollVelocity](#function-actions-placescrollvelocity)
    - [actions.PlaceScrollVelocityBatch](#function-actions-placescrollvelocitybatch)
    - [actions.RemoveScrollVelocity](#function-actions-removescrollvelocity)
    - [actions.RemoveScrollVelocityBatch](#function-actions-removescrollvelocitybatch)
    - [actions.PlaceTimingPoint](#function-actions-placetimingpoint)
    - [actions.PlaceTimingPointBatch](#function-actions-placetimingpointbatch)
    - [actions.RemoveTimingPoint](#function-actions-removetimingpoint)
    - [actions.RemoveTimingPointBatch](#function-actions-removetimingpointbatch)
    - [actions.ChangeTimingPointOffset](#function-actions-changetimingpointoffset)
    - [actions.ChangeTimingPointBpm](#function-actions-changetimingpointbpm)
    - [actions.ChangeTimingPointHidden](#function-actions-changetimingpointhidden)
    - [actions.ChangeTimingPointOffsetBatch](#function-actions-changetimingpointoffsetbatch)
    - [actions.ChangeTimingPointBpmBatch](#function-actions-changetimingpointbpmbatch)
    - [actions.ResetTimingPoint](#function-actions-resettimingpoint)
    - [actions.GoToObjects](#function-actions-gotoobjects)
    - [actions.SetHitObjectSelection](#function-actions-sethitobjectselection)
    - [actions.SetPreviewTime](#function-actions-setpreviewtime)
    - [actions.CreateLayer](#function-actions-createlayer)
    - [actions.RemoveLayer](#function-actions-removelayer)
    - [actions.RenameLayer](#function-actions-renamelayer)
    - [actions.MoveHitObjectsToLayer](#function-actions-movehitobjectstolayer)
    - [actions.ChangeLayerColor](#function-actions-changelayercolor)
    - [actions.ToggleLayerVisibility](#function-actions-togglelayervisibility)
    - [actions.ResnapNotes](#function-actions-resnapnotes)
    - [actions.AddBookmark](#function-actions-addbookmark)
    - [actions.AddBookmark](#function-actions-addbookmark)
    - [actions.AddBookmarkBatch](#function-actions-addbookmarkbatch)
    - [actions.RemoveBookmark](#function-actions-removebookmark)
    - [actions.RemoveBookmarkBatch](#function-actions-removebookmarkbatch)
    - [actions.EditBookmark](#function-actions-editbookmark)
    - [actions.ChangeBookmarkBatchOffset](#function-actions-changebookmarkbatchoffset)
    - [actions.PlaceTimingGroup](#function-actions-placetiminggroup)
    - [actions.RemoveTimingGroup](#function-actions-removetiminggroup)
    - [actions.RenameTimingGroup](#function-actions-renametiminggroup)
    - [actions.ChangeTimingGroupColor](#function-actions-changetiminggroupcolor)
    - [actions.MoveObjectsToTimingGroup](#function-actions-moveobjectstotiminggroup)
### 4. [State Global](#global-state)
  - Attributes:
    - [state.SongTime](#attribute-state-songtime)
    - [state.SelectedHitObjects](#attribute-state-selectedhitobjects)
    - [state.SelectedScrollGroupId](#attribute-state-selectedscrollgroupid)
    - [state.SelectedScrollGroup](#attribute-state-selectedscrollgroup)
    - [state.CurrentBookmark](#attribute-state-currentbookmark)
    - [state.CurrentScrollVelocity](#attribute-state-currentscrollvelocity)
    - [state.CurrentScrollSpeedFactor](#attribute-state-currentscrollspeedfactor)
    - [state.CurrentTimingPoint](#attribute-state-currenttimingpoint)
    - [state.CurrentEditorLayer](#attribute-state-currenteditorlayer)
    - [state.CurrentSnap](#attribute-state-currentsnap)
    - [state.DeltaTime](#attribute-state-deltatime)
    - [state.UnixTime](#attribute-state-unixtime)
    - [state.IsWindowHovered](#attribute-state-iswindowhovered)
    - [state.Scale](#attribute-state-scale)
    - [state.WindowSize](#attribute-state-windowsize)
  - Functions:
    - [state.SetValue](#function-state-setvalue)
    - [state.GetValue](#function-state-getvalue)
### 5. [Utils Global](#global-utils)
  - Attributes:
    - None
  - Functions:
    - [utils.CreateScrollVelocity](#function-utils-createscrollvelocity)
    - [utils.CreateScrollSpeedFactor](#function-utils-createscrollspeedfactor)
    - [utils.CreateHitObject](#function-utils-createhitobject)
    - [utils.CreateTimingPoint](#function-utils-createtimingpoint)
    - [utils.CreateEditorLayer](#function-utils-createeditorlayer)
    - [utils.CreateBookmark](#function-utils-createbookmark)
    - [utils.CreateScrollGroup](#function-utils-createscrollgroup)
    - [utils.CreateEditorAction](#function-utils-createeditoraction)
    - [utils.MillisecondsToTime](#function-utils-millisecondstotime)
    - [utils.IsKeyPressed](#function-utils-iskeypressed)
    - [utils.IsKeyReleased](#function-utils-iskeyreleased)
    - [utils.IsKeyDown](#function-utils-iskeydown)
    - [utils.IsKeyUp](#function-utils-iskeyup)
    - [utils.GenerateTimingGroupId](#function-utils-generatetiminggroupid)
    - [utils.GenerateTimingGroupIds](#function-utils-generatetiminggroupids)
### 6. [Map Global](#global-map)
  - Attributes:
    - [map.Mode](#attribute-map-mode)
    - [map.Normalized](#attribute-map-normalized)
    - [map.ScrollVelocities](#attribute-map-scrollvelocities)
    - [map.ScrollSpeedFactors](#attribute-map-scrollspeedfactors)
    - [map.TimingGroups](#attribute-map-timinggroups)
    - [map.DefaultScrollGroup](#attribute-map-defaultscrollgroup)
    - [map.GlobalScrollGroup](#attribute-map-globalscrollgroup)
    - [map.HitObjects](#attribute-map-hitobjects)
    - [map.TimingPoints](#attribute-map-timingpoints)
    - [map.EditorLayers](#attribute-map-editorlayers)
    - [map.Bookmarks](#attribute-map-bookmarks)
    - [map.DefaultLayer](#attribute-map-defaultlayer)
    - [map.TrackLength](#attribute-map-tracklength)
    - [map.LegacyLNRendering](#attribute-map-legacylnrendering)
    - [map.InitialScrollVelocity](#attribute-map-initialscrollvelocity)
  - Functions:
    - [map.ToString](#function-map-tostring)
    - [map.GetKeyCount](#function-map-getkeycount)
    - [map.GetCommonBpm](#function-map-getcommonbpm)
    - [map.GetTimingPointAt](#function-map-gettimingpointat)
    - [map.GetScrollVelocityAt](#function-map-getscrollvelocityat)
    - [map.GetScrollSpeedFactorAt](#function-map-getscrollspeedfactorat)
    - [map.GetTimingGroup](#function-map-gettiminggroup)
    - [map.GetTimingGroupIds](#function-map-gettiminggroupids)
    - [map.GetTimingGroupObjects](#function-map-gettiminggroupobjects)
    - [map.GetBookmarkAt](#function-map-getbookmarkat)
    - [map.GetTimingPointLength](#function-map-gettimingpointlength)
    - [map.GetNearestSnapTimeFromTime](#function-map-getnearestsnaptimefromtime)
## class `ScrollGroup`

#### `[ScrollGroup].InitialScrollVelocity: number`
 (READ-ONLY) The initial [sv](#class-scrollvelocity) multiplier of this [scroll group](#class-scrollgroup).
#### `[ScrollGroup].ScrollVelocities: ScrollVelocity[]`
 (READ-ONLY) All [scroll velocities](#class-scrollvelocity) within the [scroll group](#class-scrollgroup).
#### `[ScrollGroup].ScrollSpeedFactors: ScrollSpeedFactor[]`
 (READ-ONLY) All [scroll speed factors](#class-scrollspeedfactor) within the [scroll group](#class-scrollgroup).
#### `[ScrollGroup].GetScrollVelocityAt: fun(time: number): ScrollVelocity`
 (READ-ONLY) Gets the nearest [scroll velocity](#class-scrollvelocity) before the `time` parameter.
#### `[ScrollGroup].GetScrollSpeedFactorAt: fun(time: number): ScrollSpeedFactor`
 (READ-ONLY) Gets the nearest [scroll speed factor](#class-scrollspeedfactor) before the `time` parameter.
#### `[ScrollGroup].ColorRgb: string`
 (READ-ONLY) A string of format `r,g,b` representing the color of the [editor layer](#class-editorlayer). `r`, `g`, and `b` are integers within [0,255].
#### `[ScrollGroup].Hidden: boolean`
 (READ-ONLY) Determines whether or not the timing group color is visible in the editor.

## class `ScrollSpeedFactor`

#### `[ScrollSpeedFactor].StartTime: number`
 (READ-ONLY) The time at which the [scroll speed factor](#class-scrollspeedfactor) takes effect.
#### `[ScrollSpeedFactor].Multiplier: number`
 (READ-ONLY) The factor at which to multiply the player's scroll speed.

## class `ScrollVelocity`

#### `[ScrollVelocity].StartTime: number`
 (READ-ONLY) The time at which the [scroll velocity](#class-scrollvelocity) takes effect.
#### `[ScrollVelocity].Multiplier: number`
 (READ-ONLY) The factor at which to multiply the player's [scroll velocity](#class-scrollvelocity).

## class `Bookmark`

#### `[Bookmark].StartTime: integer`
 (READ-ONLY) The time the [bookmark](#class-bookmark) is attached to.
#### `[Bookmark].Note: string`
 (READ-ONLY) The contents of the [bookmark](#class-bookmark).

## class `HitObject`

#### `[HitObject].StartTime: integer`
 (READ-ONLY) The time the note is present.
#### `[HitObject].Lane: NoteLane`
 (READ-ONLY) The lane the note is in.
#### `[HitObject].EndTime: number`
 (READ-ONLY) The time the long note ends. If this note is not a long note, this value is 0.
#### `[HitObject].HitSound: HitSounds`
 (READ-ONLY) A bitwise mask representing hitsounds.
#### `[HitObject].EditorLayer: integer`
 (READ-ONLY) The id of the [editor layer](#class-editorlayer) this note is in.
#### `[HitObject].IsLongNote: boolean`
 (READ-ONLY) `true` if this note is a long note, false otherwise.
#### `[HitObject].TimingGroup: string`
 (READ-ONLY) The id of the [timing group](#class-scrollgroup) that this note belongs to.

## class `TimingPoint`

#### `[TimingPoint].StartTime: number`
 (READ-ONLY) The time in which the [timing point](#class-timingpoint) is located.
#### `[TimingPoint].Bpm: number`
 (READ-ONLY) The beats per minute, or bpm of the [timing point](#class-timingpoint).
#### `[TimingPoint].Signature: number`
 (READ-ONLY) The time signature of the [timing point](#class-timingpoint).
#### `[TimingPoint].Hidden: boolean`
 (READ-ONLY) Determines whether or not the timing lines are rendered.

## class `EditorLayer`

#### `[EditorLayer].Name: string`
 (READ-ONLY) The name of the [editor layer](#class-editorlayer).
#### `[EditorLayer].Hidden: boolean`
 (READ-ONLY) `true` if the layer is hidden within the editor.
#### `[EditorLayer].ColorRgb: string`
 (READ-ONLY) A string of format `r,g,b` representing the color of the [editor layer](#class-editorlayer). `r`, `g`, and `b` are integers within [0,255].

## class `EditorAction`

#### `[EditorAction].Type: userdata`
 (READ-ONLY) The type of action that was performed.

## class `Vector2`

#### `[Vector2].x: number`
#### `[Vector2].y: number`

## class `Vector3`

#### `[Vector3].x: number`
#### `[Vector3].y: number`
#### `[Vector3].z: number`

## class `Vector4`

#### `[Vector4].x: number`
#### `[Vector4].y: number`
#### `[Vector4].z: number`
#### `[Vector4].w: number`



<a id="global-vector"></a>
# global `vector`
<a id="function-vector-abs"></a>
## `function vector.Abs(v)`
(READ-ONLY) Returns the absolute value of each element of a vector.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The initial vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-add"></a>
## `function vector.Add(v1, v2)`
(READ-ONLY) Returns the sum of two vectors.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-clamp"></a>
## `function vector.Clamp(v, min, max)`
(READ-ONLY) Clamps a vector between two others.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to clamp.
- `min: number | Vector2 | Vector3 | Vector4` - The floor of the resultant vector.
- `max: number | Vector2 | Vector3 | Vector4` - The ceiling of the resultant vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-cross"></a>
## `function vector.Cross(v1, v2)`
(READ-ONLY) Takes a cross product between two vectors (only works with [`Vector3`](#class-vector3)).
### Parameters:
- `v1: Vector3` - The first vector.
- `v2: Vector3` - The second vector.
### Returns:
- `Vector3` - The resultant vector, with a magnitude equal to the area of a parallelogram projected by `v1` and `v2`.


<a id="function-vector-distance"></a>
## `function vector.Distance(v1, v2)`
(READ-ONLY) Finds the distance between two vectors.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number` - The distance between the two vectors.


<a id="function-vector-distancesquared"></a>
## `function vector.DistanceSquared(v1, v2)`
(READ-ONLY) Finds the distance between two vectors, squared.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number` - The squared distance between the two vectors.


<a id="function-vector-divide"></a>
## `function vector.Divide(v1, v2)`
(READ-ONLY) Divides two vectors, termwise.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-dot"></a>
## `function vector.Dot(v1, v2)`
(READ-ONLY) Takes the dot product of two vectors; that is, multiplies the two vectors termwise then returns the sum of the resulting terms.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number` - The dot product of the two vectors.


<a id="function-vector-length"></a>
## `function vector.Length(v)`
(READ-ONLY) Determines the length of a vector.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to measure.
### Returns:
- `number` - The magnitude of the vector.


<a id="function-vector-lerp"></a>
## `function vector.Lerp(v1, v2, f)`
(READ-ONLY) Returns a vector that is `(f * 100)%` of the way from travelling between `v1` and `v2`.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
- `f: number` - A number within [0-1] which determines the weight of `v2`.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-max"></a>
## `function vector.Max(v1, v2)`
(READ-ONLY) Returns a vector which has the maximum value of both vectors, termwise.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-min"></a>
## `function vector.Min(v1, v2)`
(READ-ONLY) Returns a vector which has the minimum value of both vectors, termwise.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-modulo"></a>
## `function vector.Modulo(v1, v2)`
(READ-ONLY) Returns a vector which has the remainder of the first vector divided by the second, termwise.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-multiply"></a>
## `function vector.Multiply(v1, v2)`
(READ-ONLY) Multiplies the two vectors termwise and returns the product.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-negate"></a>
## `function vector.Negate(v)`
(READ-ONLY) Negates the given vector termwise.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to negate.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-new"></a>
## `function vector.New(s1, s2)`
(READ-ONLY) Creates a new [`Vector2`](#class-vector2).
### Parameters:
- `s1: number` - The first element.
- `s2: number` - The second element.
### Returns:
- `Vector2` - The output vector.


<a id="function-vector-new"></a>
## `function vector.New(s1, s2, s3)`
(READ-ONLY) Creates a new [`Vector3`](#class-vector3).
### Parameters:
- `s1: number` - The first element.
- `s2: number` - The second element.
- `s3: number` - The third element.
### Returns:
- `Vector3` - The output vector.


<a id="function-vector-new"></a>
## `function vector.New(s1, s2, s3, s4)`
(READ-ONLY) Creates a new [`Vector4`](#class-vector4).
### Parameters:
- `s1: number` - The first element.
- `s2: number` - The second element.
- `s3: number` - The third element.
- `s4: number` - The fourth element.
### Returns:
- `Vector4` - The output vector.


<a id="function-vector-normalize"></a>
## `function vector.Normalize(v)`
(READ-ONLY) Normalizes the given vector such that it has a magnitude of 1.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to normalize.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-one"></a>
## `function vector.One(n)`
(READ-ONLY) Returns a vector of a requested dimension, with all elements being `1`.
### Parameters:
- `n: Vector2 | Vector3 | Vector4` - The dimension of the vector. Assuming a vector is given as the argument, the dimension of the given vector is used.
### Returns:
- `Vector2 | Vector3 | Vector4` - A vector of dimension `n` with all elements being `1`.


<a id="function-vector-one"></a>
## `function vector.One(n)`
(READ-ONLY) Returns a [`Vector2`](#class-vector2), with all elements being `1`.
### Parameters:
- `n: number` - Any number.
### Returns:
- `Vector2` - A [`Vector2`](#class-vector2) with all elements being `1`.


<a id="function-vector-reflect"></a>
## `function vector.Reflect(v, norm)`
(READ-ONLY) Reflects a vector across a surface given by its normal vector and pivot point [`vector.Zero`](#function-vector-zero).
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to reflect.
- `norm: number | Vector2 | Vector3 | Vector4` - The normal vector of the surface in which to reflect `v`.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-remeuclid"></a>
## `function vector.RemEuclid(v1, v2)`
(READ-ONLY) Returns a vector which has the euclidean remainder of the first vector divided by the second, termwise. A euclidean remainder is like a normal remainder, but if the closest normal remainder is negative then the divisor is added to make it positive.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-squareroot"></a>
## `function vector.SquareRoot(v)`
(READ-ONLY) Square roots the given vector, termwise.
### Parameters:
- `v: number | Vector2 | Vector3 | Vector4` - The vector to root.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-subtract"></a>
## `function vector.Subtract(v1, v2)`
(READ-ONLY) Returns the difference of two vectors.
### Parameters:
- `v1: number | Vector2 | Vector3 | Vector4` - The first vector.
- `v2: number | Vector2 | Vector3 | Vector4` - The second vector.
### Returns:
- `number | Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-table"></a>
## `function vector.Table(v)`
(READ-ONLY) Coerces a [`Vector2`](#class-vector2) to become a numerically-indexed table.
### Parameters:
- `v: Vector2` - The vector to pack.
### Returns:
- `[number,` - table The resultant table.


<a id="function-vector-table"></a>
## `function vector.Table(v)`
(READ-ONLY) Coerces a [`Vector3`](#class-vector3) to become a numerically-indexed table.
### Parameters:
- `v: Vector3` - The vector to pack.
### Returns:
- `[number,` - number] table The resultant table.


<a id="function-vector-table"></a>
## `function vector.Table(v)`
(READ-ONLY) Coerces a [`Vector4`](#class-vector4) to become a numerically-indexed table.
### Parameters:
- `v: Vector4` - The vector to pack.
### Returns:
- `[number,` - number, number] table The resultant table.


<a id="function-vector-unitw"></a>
## `function vector.UnitW(dim)`
(READ-ONLY) Creates a unit vector in the `W` direction with the given dimension.
### Parameters:
- `dim: Vector2 | Vector3 | Vector4` - The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.
### Returns:
- `Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-unitx"></a>
## `function vector.UnitX(dim)`
(READ-ONLY) Creates a unit vector in the `X` direction with the given dimension.
### Parameters:
- `dim: Vector2 | Vector3 | Vector4` - The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.
### Returns:
- `Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-unity"></a>
## `function vector.UnitY(dim)`
(READ-ONLY) Creates a unit vector in the `Y` direction with the given dimension.
### Parameters:
- `dim: Vector2 | Vector3 | Vector4` - The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.
### Returns:
- `Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-unitz"></a>
## `function vector.UnitZ(dim)`
(READ-ONLY) Creates a unit vector in the `Z` direction with the given dimension.
### Parameters:
- `dim: Vector2 | Vector3 | Vector4` - The dimension of the vector to produce. Assuming a vector is given as the argument, the dimension of that vector is used instead.
### Returns:
- `Vector2 | Vector3 | Vector4` - The resultant vector.


<a id="function-vector-zero"></a>
## `function vector.Zero(n)`
(READ-ONLY) Returns a vector of a requested dimension, with all elements being `0`.
### Parameters:
- `n: Vector2 | Vector3 | Vector4` - The dimension of the vector. Assuming a vector is given as the argument, the dimension of the given vector is used.
### Returns:
- `Vector2 | Vector3 | Vector4` - A vector of dimension `n` with all elements being `0`.


<a id="function-vector-zero"></a>
## `function vector.Zero(n)`
(READ-ONLY) Returns a [`Vector2`](#class-vector2), with all elements being `0`.
### Parameters:
- `n: number` - Any number.
### Returns:
- `Vector2` - A [`Vector2`](#class-vector2) with all elements being `0`.
<a id="global-actions"></a>
# global `actions`
<a id="function-actions-perform"></a>
## `function actions.Perform(action)`
(READ-ONLY) Performs a given [editor action](#class-editoraction).
### Parameters:
- `action: EditorAction` - The [editor action](#class-editoraction) to perform.
### Returns:
- `nil`


<a id="function-actions-performbatch"></a>
## `function actions.PerformBatch(actionList)`
(READ-ONLY) Performs a given set of [editor actions](#class-editoraction).
### Parameters:
- `actionList: EditorAction[]` - The [editor actions](#class-editoraction) to perform.
### Returns:
- `nil`


<a id="function-actions-undo"></a>
## `function actions.Undo()`
(READ-ONLY) Undoes the most recent [editor action](#class-editoraction).
### Parameters:
- None
### Returns:
- `nil`


<a id="function-actions-redo"></a>
## `function actions.Redo()`
(READ-ONLY) Redoes the most recent undo.
### Parameters:
- None
### Returns:
- `nil`


<a id="function-actions-placehitobject"></a>
## `function actions.PlaceHitObject(ho)`
(READ-ONLY) Places a given [hit object](#class-hitobject), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `ho: HitObject` - The [hit object](#class-hitobject) to place, which must be created via [`utils.CreateHitObject`](#function-utils-createhitobject).
### Returns:
- `nil`


<a id="function-actions-placehitobject"></a>
## `function actions.PlaceHitObject(lane, startTime, endTime, editorLayer, hitsounds, tgId)`
(READ-ONLY) Places a new [hit object](#class-hitobject), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `lane: NoteLane` - The lane of the [hit object](#class-hitobject).
- `startTime: integer` - The start time of the [hit object](#class-hitobject).
- `endTime?: integer` - If placing a rice note, this value should be 0. Otherwise, this should be the time the long note ends.
- `editorLayer?: integer` - The id of the layer in which the [hit object](#class-hitobject) will lie.
- `hitsounds?: HitSounds` - The hitsounds attached to the [hit object](#class-hitobject).
- `tgId?: integer` - The id of the [timing group](#class-scrollgroup) this [hit object](#class-hitobject) will be in.
### Returns:
- `nil`


<a id="function-actions-placehitobjectbatch"></a>
## `function actions.PlaceHitObjectBatch(hos)`
(READ-ONLY) Places a given set of [hit objects](#class-hitobject), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `hos: HitObject[]` - The [hit objects](#class-hitobject) to place, which must be created via [`utils.CreateHitObject`](#function-utils-createhitobject).
### Returns:
- `nil`


<a id="function-actions-removehitobject"></a>
## `function actions.RemoveHitObject(ho)`
(READ-ONLY) Removes a given [hit object](#class-hitobject), assuming it already exists.
### Parameters:
- `ho: HitObject` - The [hit object](#class-hitobject) to remove, which must be obtained via [`map.HitObjects`](#attribute-map-hitobjects) or something similar.
### Returns:
- `nil`


<a id="function-actions-removehitobjectbatch"></a>
## `function actions.RemoveHitObjectBatch(hos)`
(READ-ONLY) Removes a given set of [hit objects](#class-hitobject), assuming they already exist.
### Parameters:
- `hos: HitObject[]` - The [hit objects](#class-hitobject) to remove, which must be obtained via [`map.HitObjects`](#attribute-map-hitobjects) or something similar.
### Returns:
- `nil`


<a id="function-actions-resizelongnote"></a>
## `function actions.ResizeLongNote(ho, oldEndTime, newEndTime)`
(READ-ONLY) Changes the length of a long-note type [hit object](#class-hitobject).
### Parameters:
- `ho: HitObject` - The [hit object](#class-hitobject) to modify, which must be obtained via [`map.HitObjects`](#attribute-map-hitobjects) or something similar.
- `oldEndTime: integer` - The original end time of the [hit object](#class-hitobject), or `hitObject.endTime`.
- `newEndTime: integer` - The desired time to move the LN end to.
### Returns:
- `nil`


<a id="function-actions-placescrollvelocity"></a>
## `function actions.PlaceScrollVelocity(sv)`
(READ-ONLY) Places a given [scroll velocity](#class-scrollvelocity), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `sv: ScrollVelocity` - The [scroll velocity](#class-scrollvelocity) to place, which must be created via [`utils.CreateScrollVelocity`](#function-utils-createscrollvelocity).
### Returns:
- `nil`


<a id="function-actions-placescrollvelocitybatch"></a>
## `function actions.PlaceScrollVelocityBatch(svs)`
(READ-ONLY) Places a given set of [scroll velocities](#class-scrollvelocity), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `svs: ScrollVelocity[]` - The [scroll velocities](#class-scrollvelocity) to place, which must be created via [`utils.CreateScrollVelocity`](#function-utils-createscrollvelocity).
### Returns:
- `nil`


<a id="function-actions-removescrollvelocity"></a>
## `function actions.RemoveScrollVelocity(sv)`
(READ-ONLY) Removes a given [scroll velocity](#class-scrollvelocity), assuming it already exists.
### Parameters:
- `sv: ScrollVelocity` - The [scroll velocity](#class-scrollvelocity) to remove, which must be obtained via [`map.ScrollVelocities`](#attribute-map-scrollvelocities) or something similar.
### Returns:
- `nil`


<a id="function-actions-removescrollvelocitybatch"></a>
## `function actions.RemoveScrollVelocityBatch(svs)`
(READ-ONLY) Removes a given set of [scroll velocities](#class-scrollvelocity), assuming they already exist.
### Parameters:
- `svs: ScrollVelocity[]` - The [scroll velocities](#class-scrollvelocity) to remove, which must be obtained via [`map.ScrollVelocities`](#attribute-map-scrollvelocities) or something similar.
### Returns:
- `nil`


<a id="function-actions-placetimingpoint"></a>
## `function actions.PlaceTimingPoint(tp)`
(READ-ONLY) Places a given [timing point](#class-timingpoint), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `tp: TimingPoint` - The [timing point](#class-timingpoint) to place, which must be created via [`utils.CreateTimingPoint`](#function-utils-createtimingpoint).
### Returns:
- `nil`


<a id="function-actions-placetimingpointbatch"></a>
## `function actions.PlaceTimingPointBatch(tps)`
(READ-ONLY) Places a given set of [timing points](#class-timingpoint), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `tps: TimingPoint[]` - The [timing points](#class-timingpoint) to place, which must be created via [`utils.CreateTimingPoint`](#function-utils-createtimingpoint).
### Returns:
- `nil`


<a id="function-actions-removetimingpoint"></a>
## `function actions.RemoveTimingPoint(tp)`
(READ-ONLY) Removes a given [timing point](#class-timingpoint), assuming it already exists.
### Parameters:
- `tp: TimingPoint` - The [timing point](#class-timingpoint) to remove, which must be obtained via [`map.TimingPoints`](#attribute-map-timingpoints) or something similar.
### Returns:
- `nil`


<a id="function-actions-removetimingpointbatch"></a>
## `function actions.RemoveTimingPointBatch(tps)`
(READ-ONLY) Removes a given set of [timing points](#class-timingpoint), assuming they already exist.
### Parameters:
- `tps: TimingPoint[]` - The [timing points](#class-timingpoint) to remove, which must be obtained via [`map.TimingPoints`](#attribute-map-timingpoints) or something similar.
### Returns:
- `nil`


<a id="function-actions-changetimingpointoffset"></a>
## `function actions.ChangeTimingPointOffset(tp, newTime)`
(READ-ONLY) Changes the `startTime` of a given [timing point](#class-timingpoint).
### Parameters:
- `tp: TimingPoint` - The [timing point](#class-timingpoint) to modify, which must be obtained via [`map.TimingPoints`](#attribute-map-timingpoints) or something similar.
- `newTime: number` - The new `startTime`.
### Returns:
- `nil`


<a id="function-actions-changetimingpointbpm"></a>
## `function actions.ChangeTimingPointBpm(tp, newBpm)`
(READ-ONLY) Changes the `Bpm` of a given [timing point](#class-timingpoint).
### Parameters:
- `tp: TimingPoint` - The [timing point](#class-timingpoint) to modify, which must be obtained via [`map.TimingPoints`](#attribute-map-timingpoints) or something similar.
- `newBpm: number` - The new `Bpm`.
### Returns:
- `nil`


<a id="function-actions-changetimingpointhidden"></a>
## `function actions.ChangeTimingPointHidden(tp, newHidden)`
(READ-ONLY) Changes if a given [timing point](#class-timingpoint) should be `Hidden`.
### Parameters:
- `tp: TimingPoint` - The [timing point](#class-timingpoint) to modify, which must be obtained via [`map.TimingPoints`](#attribute-map-timingpoints) or something similar.
- `newHidden: boolean` - The new `Hidden` property.
### Returns:
- `nil`


<a id="function-actions-changetimingpointoffsetbatch"></a>
## `function actions.ChangeTimingPointOffsetBatch(tps, newTime)`
(READ-ONLY) Changes the `startTime` of the given [timing points](#class-timingpoint).
### Parameters:
- `tps: TimingPoint[]` - The [timing points](#class-timingpoint) to modify, which must be obtained via [`map.TimingPoints`](#attribute-map-timingpoints) or something similar.
- `newTime: number` - The new `startTime`.
### Returns:
- `nil`


<a id="function-actions-changetimingpointbpmbatch"></a>
## `function actions.ChangeTimingPointBpmBatch(tps, newBpm)`
(READ-ONLY) Changes the `Bpm` of the given [timing points](#class-timingpoint).
### Parameters:
- `tps: TimingPoint[]` - The [timing points](#class-timingpoint) to modify, which must be obtained via [`map.TimingPoints`](#attribute-map-timingpoints) or something similar.
- `newBpm: number` - The new `Bpm`.
### Returns:
- `nil`


<a id="function-actions-resettimingpoint"></a>
## `function actions.ResetTimingPoint(tp)`
(READ-ONLY) Resets the given[timing point](#class-timingpoint).
### Parameters:
- `tp: TimingPoint` - The [timing point](#class-timingpoint) to reset, which must be obtained via [`map.TimingPoints`](#attribute-map-timingpoints) or something similar.
### Returns:
- `nil`


<a id="function-actions-gotoobjects"></a>
## `function actions.GoToObjects(input)`
(READ-ONLY) Moves the [`song time`](#attribute-state-songtime) to the designated objects.
### Parameters:
- `input: string` - The input string with navigation directions, usually obtained from copying notes in-game.
### Returns:
- `nil`


<a id="function-actions-sethitobjectselection"></a>
## `function actions.SetHitObjectSelection(hos)`
(READ-ONLY) Sets the [hit object selection](#attribute-state-selectedhitobjects) to be the [hit objects](#class-hitobject) passed as the argument.
### Parameters:
- `hos: HitObject[]` - The [hit objects](#class-hitobject) to select, which must be obtained via [`map.HitObjects`](#attribute-map-hitobjects) or something similar.
### Returns:
- `nil`


<a id="function-actions-setpreviewtime"></a>
## `function actions.SetPreviewTime(time)`
(READ-ONLY) Sets the preview time of the map.
### Parameters:
- `time: integer` - The preview time, in milliseconds.
### Returns:
- `nil`


<a id="function-actions-createlayer"></a>
## `function actions.CreateLayer(layer, index)`
(READ-ONLY) Creates the given [editor layer](#class-editorlayer), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `layer: EditorLayer` - The [editor layer](#class-editorlayer) to create, which must be created via [`utils.CreateEditorLayer`](#function-utils-createeditorlayer).
- `index?: integer` - An optional index for the [editor layer](#class-editorlayer) to be placed in. If none is given, the next available index is used.
### Returns:
- `nil`


<a id="function-actions-removelayer"></a>
## `function actions.RemoveLayer(layer)`
(READ-ONLY) Removes the given [editor layer](#class-editorlayer), assuming it exists.
### Parameters:
- `layer: EditorLayer` - The [editor layer](#class-editorlayer) to remove, which must be obtained via [`map.EditorLayers`](#attribute-map-editorlayers) or something similar.
### Returns:
- `nil`


<a id="function-actions-renamelayer"></a>
## `function actions.RenameLayer(layer, newName)`
(READ-ONLY) Renames the given [editor layer](#class-editorlayer), assuming it exists.
### Parameters:
- `layer: EditorLayer` - The [editor layer](#class-editorlayer) to rename, which must be obtained via [`map.EditorLayers`](#attribute-map-editorlayers) or something similar.
- `newName: string` - The new name the [editor layer](#class-editorlayer) should have.
### Returns:
- `nil`


<a id="function-actions-movehitobjectstolayer"></a>
## `function actions.MoveHitObjectsToLayer(layer, hos)`
(READ-ONLY) Moves the given [hit objects](#class-hitobject) to the given [editor layer](#class-editorlayer).
### Parameters:
- `layer: EditorLayer` - The [editor layer](#class-editorlayer) to move the [hit objects](#class-hitobject) to, which must be obtained via [`map.EditorLayers`](#attribute-map-editorlayers) or something similar.
- `hos: HitObject[]` - The [hit objects](#class-hitobject) to move, which must be obtained via [`map.HitObjects`](#attribute-map-hitobjects) or something similar.
### Returns:
- `nil`


<a id="function-actions-changelayercolor"></a>
## `function actions.ChangeLayerColor(layer, r, g, b)`
(READ-ONLY) Changes the color of the given [editor layer](#class-editorlayer).
### Parameters:
- `layer: EditorLayer` - The [editor layer](#class-editorlayer) to alter the color of, which must be obtained via [`map.EditorLayers`](#attribute-map-editorlayers) or something similar.
- `r: integer` - The strength of the red part of the color. Should be within [0-255].
- `g: integer` - The strength of the green part of the color. Should be within [0-255].
- `b: integer` - The strength of the blue part of the color. Should be within [0-255].
### Returns:
- `nil`


<a id="function-actions-togglelayervisibility"></a>
## `function actions.ToggleLayerVisibility(layer)`
(READ-ONLY) Toggles the visibility of the given [editor layer](#class-editorlayer).
### Parameters:
- `layer: EditorLayer` - The [editor layer](#class-editorlayer) to alter, which must be obtained via [`map.EditorLayers`](#attribute-map-editorlayers) or something similar.
### Returns:
- `nil`


<a id="function-actions-resnapnotes"></a>
## `function actions.ResnapNotes(snaps, hos)`
(READ-ONLY) Snaps the given [hit objects](#class-hitobject) to the nearest snap within the table of `snaps`.
### Parameters:
- `snaps: integer[]` - The list of snap denominators to use.
- `hos: HitObject[]` - The [hit objects](#class-hitobject) to snap, which must be obtained via [`map.HitObjects`](#attribute-map-hitobjects) or something similar.
### Returns:
- `nil`


<a id="function-actions-addbookmark"></a>
## `function actions.AddBookmark(bm)`
(READ-ONLY) Places a given [bookmark](#class-bookmark), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `bm: Bookmark` - The [bookmark](#class-bookmark) to place, which must be created via [`utils.CreateBookmark`](#function-utils-createbookmark).
### Returns:
- `nil`


<a id="function-actions-addbookmark"></a>
## `function actions.AddBookmark(time, info)`
(READ-ONLY) Places a new [bookmark](#class-bookmark), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `time: integer` - The time to place the [bookmark](#class-bookmark).
- `info: string` - The content of the [bookmark](#class-bookmark).
### Returns:
- `nil`


<a id="function-actions-addbookmarkbatch"></a>
## `function actions.AddBookmarkBatch(bms)`
(READ-ONLY) Places a given set of [bookmarks](#class-bookmark), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `bms: Bookmark[]` - The [bookmarks](#class-bookmark) to place, which must be created via [`utils.CreateBookmark`](#function-utils-createbookmark).
### Returns:
- `nil`


<a id="function-actions-removebookmark"></a>
## `function actions.RemoveBookmark(bm)`
(READ-ONLY) Removes a given [bookmark](#class-bookmark), assuming it exists.
### Parameters:
- `bm: Bookmark` - The [bookmark](#class-bookmark) to remove, which must be obtained via [`map.Bookmarks`](#attribute-map-bookmarks) or something similar.
### Returns:
- `nil`


<a id="function-actions-removebookmarkbatch"></a>
## `function actions.RemoveBookmarkBatch(bms)`
(READ-ONLY) Removes a given set of [bookmarks](#class-bookmark), assuming they exist.
### Parameters:
- `bms: Bookmark[]` - The [bookmarks](#class-bookmark) to remove, which must be obtained via [`map.Bookmarks`](#attribute-map-bookmarks) or something similar.
### Returns:
- `nil`


<a id="function-actions-editbookmark"></a>
## `function actions.EditBookmark(bm, newNote)`
(READ-ONLY) Changes the contents of a [bookmark](#class-bookmark).
### Parameters:
- `bm: Bookmark` - The [bookmark](#class-bookmark) to edit, which must be obtained via [`map.Bookmarks`](#attribute-map-bookmarks) or something similar.
- `newNote: string` - The new contents of the [bookmark](#class-bookmark).
### Returns:
- `nil`


<a id="function-actions-changebookmarkbatchoffset"></a>
## `function actions.ChangeBookmarkBatchOffset(bms, offset)`
(READ-ONLY) Changes the start time of the given [bookmarks](#class-bookmark).
### Parameters:
- `bms: Bookmark[]` - The [bookmarks](#class-bookmark) to edit, which must be obtained via [`map.Bookmarks`](#attribute-map-bookmarks) or something similar.
- `offset: integer` - The new `startTime` of the [bookmarks](#class-bookmark).
### Returns:
- `nil`


<a id="function-actions-placetiminggroup"></a>
## `function actions.PlaceTimingGroup(id, tg, hos)`
(READ-ONLY) Places the given [timing group](#class-scrollgroup), without the need to create an [editor action](#class-editoraction).
### Parameters:
- `id: string` - The id of the [timing group](#class-scrollgroup) to place, usually generated by [`utils.GenerateTimingGroupId`](#function-utils-generatetiminggroupid).
- `tg: ScrollGroup` - The [timing group](#class-scrollgroup) to place, which must be created via [`utils.CreateScrollGroup`](#function-utils-createscrollgroup).
- `hos: HitObject[]` - A list of [hit objects](#class-hitobject) that should be placed within the [timing group](#class-scrollgroup), which must be created via [`utils.CreateHitObject`](#function-utils-createhitobject), or obtained via [`map.HitObjects`](#attribute-map-hitobjects) or something similar.
### Returns:
- `nil`


<a id="function-actions-removetiminggroup"></a>
## `function actions.RemoveTimingGroup(id)`
(READ-ONLY) Removes the given [timing group](#class-scrollgroup), assuming it exists.
### Parameters:
- `id: string` - The id of the [timing group](#class-scrollgroup) to remove, which must be obtained via [`state.SelectedScrollGroup`](#attribute-state-selectedscrollgroup) or something similar.
### Returns:
- `nil`


<a id="function-actions-renametiminggroup"></a>
## `function actions.RenameTimingGroup(id, newId)`
(READ-ONLY) Renames the given [timing group](#class-scrollgroup).
### Parameters:
- `id: string` - The id of the [timing group](#class-scrollgroup) to rename, which must be obtained via [`state.SelectedScrollGroup`](#attribute-state-selectedscrollgroup) or something similar.
- `newId: string` - The new id.
### Returns:
- `nil`


<a id="function-actions-changetiminggroupcolor"></a>
## `function actions.ChangeTimingGroupColor(id, r, g, b)`
(READ-ONLY) Changes the color of the given [timing group](#class-scrollgroup).
### Parameters:
- `id: string` - The id of the [timing group](#class-scrollgroup) to alter the color of, which must be obtained via [`state.SelectedScrollGroup`](#attribute-state-selectedscrollgroup) or something similar.
- `r: integer` - The strength of the red part of the color. Should be within [0-255].
- `g: integer` - The strength of the green part of the color. Should be within [0-255].
- `b: integer` - The strength of the blue part of the color. Should be within [0-255].
### Returns:
- `nil`


<a id="function-actions-moveobjectstotiminggroup"></a>
## `function actions.MoveObjectsToTimingGroup(hos, id)`
(READ-ONLY) Moves all given [hit objects](#class-hitobject) to the given [timing group](#class-scrollgroup).
### Parameters:
- `hos: HitObject[]` - The [hit objects](#class-hitobject) to move, which must be obtained via [`map.HitObjects`](#attribute-map-hitobjects) or something similar.
- `id: string` - The id of the [timing group](#class-scrollgroup) to move the [hit objects](#class-hitobject) to, which must be obtained via [`state.SelectedScrollGroup`](#attribute-state-selectedscrollgroup) or something similar.
### Returns:
- `nil`
<a id="global-state"></a>
# global `state`
<a id="attribute-state-songtime"></a>
## `attribute state.SongTime`

### Type: `number`
(READ-ONLY)
 The current song time in milliseconds.

<a id="attribute-state-selectedhitobjects"></a>
## `attribute state.SelectedHitObjects`

### Type: `HitObject[]`
(READ-ONLY)
 A list of all [hit objects](#class-hitobject) within the current selection.
 If multiple [hit objects](#class-hitobject) are selected at once, the table will be in order of their `StartTime`. If they were selected one at a time using <kbd>Ctrl-Click</kbd>, then the table will be in order of their selection order.

<a id="attribute-state-selectedscrollgroupid"></a>
## `attribute state.SelectedScrollGroupId`

### Type: `string`
The `id`, or name, of the current selected [scroll group](#class-scrollgroup).

<a id="attribute-state-selectedscrollgroup"></a>
## `attribute state.SelectedScrollGroup`

### Type: `ScrollGroup`
(READ-ONLY)
 The current selected [scroll group](#class-scrollgroup).

<a id="attribute-state-currentbookmark"></a>
## `attribute state.CurrentBookmark`

### Type: `Bookmark`
(READ-ONLY)
 The nearest [bookmark](#class-bookmark) before the current `state.SongTime`.

<a id="attribute-state-currentscrollvelocity"></a>
## `attribute state.CurrentScrollVelocity`

### Type: `ScrollVelocity`
(READ-ONLY)
 The nearest [scroll velocity](#class-scrollvelocity) before the current `state.SongTime`.

<a id="attribute-state-currentscrollspeedfactor"></a>
## `attribute state.CurrentScrollSpeedFactor`

### Type: `ScrollSpeedFactor`
(READ-ONLY)
 The nearest [scroll speed factor](#class-scrollspeedfactor) before the current `state.SongTime`.

<a id="attribute-state-currenttimingpoint"></a>
## `attribute state.CurrentTimingPoint`

### Type: `TimingPoint`
(READ-ONLY)
 The nearest [timing point](#class-timingpoint) before the current `state.SongTime`.

<a id="attribute-state-currenteditorlayer"></a>
## `attribute state.CurrentEditorLayer`

### Type: `EditorLayer`
(READ-ONLY)
 The current selected [editor layer](#class-editorlayer).

<a id="attribute-state-currentsnap"></a>
## `attribute state.CurrentSnap`

### Type: `integer`
(READ-ONLY)
 The selected snap's denominator. (e.g. 1/3 snap returns `3`, etc.)

<a id="attribute-state-deltatime"></a>
## `attribute state.DeltaTime`

### Type: `number`
(READ-ONLY)
 The time elapsed between the last frame and the current frame, in milliseconds.

<a id="attribute-state-unixtime"></a>
## `attribute state.UnixTime`

### Type: `integer`
(READ-ONLY)
 The current unix timestamp.

<a id="attribute-state-iswindowhovered"></a>
## `attribute state.IsWindowHovered`

### Type: `boolean`
MUST BE SET MANUALLY - Indicates to the game that the window is hovered.

<a id="attribute-state-scale"></a>
## `attribute state.Scale`

### Type: `number`
(READ-ONLY)
 The current ImGui scale.

<a id="attribute-state-windowsize"></a>
## `attribute state.WindowSize`

### Type: `[number, number] | Vector2`
(READ-ONLY)
 The size of the Quaver window.

<a id="function-state-setvalue"></a>
## `function state.SetValue(key, value)`
(READ-ONLY) Stores a value that can be retrieved by [`state.GetValue`](#function-state-getvalue). Mainly used to persist data between hot-reloads.
### Parameters:
- `key: string` - The identifier for this particular value.
- `value: any` - The value to store.
### Returns:
- `nil`


<a id="function-state-getvalue"></a>
## `function state.GetValue(key, fallback)`
(READ-ONLY) Gets a value previously stored by [`state.SetValue`](#function-state-setvalue). If the value doesn't exist, return `fallback` instead. Note that `nil` is considered a value, meaning if you store `nil` using [`state.SetValue`](#function-state-setvalue), then the `fallback` will not be used.
### Parameters:
- `key: string` - The identifier for the value set by `state.SetValue`.
- `fallback?: T` - An optional term to return, if the result is `nil`.
### Returns:
- `T` - The stored value.
<a id="global-utils"></a>
# global `utils`
<a id="function-utils-createscrollvelocity"></a>
## `function utils.CreateScrollVelocity(startTime, multiplier)`
(READ-ONLY) Creates a [scroll velocity](#class-scrollvelocity), to later be placed into an [`EditorAction`](#function-utils-createeditoraction) and executed.
### Parameters:
- `startTime: number` - The time to create the [scroll velocity](#class-scrollvelocity), in milliseconds.
- `multiplier: number` - The factor at which to scale the player's [scroll velocity](#class-scrollvelocity).
### Returns:
- `ScrollVelocity` - The requested [scroll velocity](#class-scrollvelocity).


<a id="function-utils-createscrollspeedfactor"></a>
## `function utils.CreateScrollSpeedFactor(startTime, multiplier)`
(READ-ONLY) Creates a [scroll speed factor](#class-scrollspeedfactor), to later be placed into an [`EditorAction`](#function-utils-createeditoraction) and executed.
### Parameters:
- `startTime: number` - The time to create the [scroll speed factor](#class-scrollspeedfactor), in milliseconds.
- `multiplier: number` - The factor at which to scale the player's scroll speed.
### Returns:
- `ScrollSpeedFactor` - The requested [scroll speed factor](#class-scrollspeedfactor).


<a id="function-utils-createhitobject"></a>
## `function utils.CreateHitObject(startTime, lane, endTime, hitsounds, editorLayer)`
(READ-ONLY) Creates a [hit object](#class-hitobject), to later be placed into an [`EditorAction`](#function-utils-createeditoraction) and executed.
### Parameters:
- `startTime: integer` - The time to create the note, in milliseconds.
- `lane: NoteLane` - The lane to create the note in.
- `endTime?: integer` - If given and non-zero, the note becomes a long note. This parameter determines when the long note will end.
- `hitsounds?: HitSounds` - The hitsounds that should be applied to the note.
- `editorLayer?: integer` - The index of the [editor layer](#class-editorlayer) that this note should be added to.
### Returns:
- `HitObject` - The requested note.


<a id="function-utils-createtimingpoint"></a>
## `function utils.CreateTimingPoint(startTime, bpm, signature, hidden)`
(READ-ONLY) Creates a [timing point](#class-timingpoint), to later be placed into an [`EditorAction`](#function-utils-createeditoraction) and executed.
### Parameters:
- `startTime: number` - The time to create the [timing point](#class-timingpoint), in milliseconds.
- `bpm: number` - The beats per minute of the [timing point](#class-timingpoint).
- `signature?: integer` - The time signature of the [timing point](#class-timingpoint).
- `hidden?: boolean` - Whether or not to hide the timing lines in gameplay.
### Returns:
- `TimingPoint` - The requested [timing point](#class-timingpoint).


<a id="function-utils-createeditorlayer"></a>
## `function utils.CreateEditorLayer(name, hidden, colorRgb)`
(READ-ONLY) Creates an [editor layer](#class-editorlayer), to later be placed into an [`EditorAction`](#function-utils-createeditoraction) and executed.
### Parameters:
- `name: string` - The name of this layer.
- `hidden?: boolean` - Whether or not to hide this layer in the editor.
- `colorRgb?: string` - The color of the [editor layer](#class-editorlayer). This parameter should be a string of the form `r,g,b`, where `r`, `g`, and `b` are integers within [0,255].
### Returns:
- `EditorLayer` - The requested [editor layer](#class-editorlayer).


<a id="function-utils-createbookmark"></a>
## `function utils.CreateBookmark(startTime, note)`
(READ-ONLY) Creates a [bookmark](#class-bookmark), to later be placed into an [`EditorAction`](#function-utils-createeditoraction) and executed.
### Parameters:
- `startTime: number` - The time to create the [bookmark](#class-bookmark), in milliseconds.
- `note: string` - The contents of the [bookmark](#class-bookmark).
### Returns:
- `Bookmark` - The requested [bookmark](#class-bookmark).


<a id="function-utils-createscrollgroup"></a>
## `function utils.CreateScrollGroup(svs, initialSV, colorRgb)`
(READ-ONLY) Creates a [scroll group](#class-scrollgroup), to later be placed into an [`EditorAction`](#function-utils-createeditoraction) and executed.
### Parameters:
- `svs: ScrollVelocity[]` - The [scroll velocities](#class-scrollvelocity) to add to the [scroll group](#class-scrollgroup).
- `initialSV?: number` - The initial [scroll velocity](#class-scrollvelocity) of the [scroll group](#class-scrollgroup).
- `colorRgb?: string` - The color of the [scroll group](#class-scrollgroup). This parameter should be a string of the form `r,g,b`, where `r`, `g`, and `b` are integers within [0,255].
### Returns:
- `ScrollGroup` - The requested [scroll group](#class-scrollgroup).


<a id="function-utils-createeditoraction"></a>
## `function utils.CreateEditorAction(type, ...)`
(READ-ONLY) Creates an [editor action](#class-editoraction), to later be executed with [`actions.Perform`](#function-actions-perform).
### Parameters:
- `type: EditorActionType` - The type of action to perform.
### Returns:
- `EditorAction` - The requested [editor action](#class-editoraction).


<a id="function-utils-millisecondstotime"></a>
## `function utils.MillisecondsToTime(time)`
(READ-ONLY) Returns a formatted version of the inputted `time`.
### Parameters:
- `time: number` - The elapsed time to format, in milliseconds.
### Returns:
- `string` - The formatted time.


<a id="function-utils-iskeypressed"></a>
## `function utils.IsKeyPressed(key)`
(READ-ONLY) Returns `true` if the given key is pressed within the given frame.
### Parameters:
- `key: Key` - A key, from the `keys` enum.
### Returns:
- `boolean` - Whether or not the key has been pressed this frame.


<a id="function-utils-iskeyreleased"></a>
## `function utils.IsKeyReleased(key)`
(READ-ONLY) Returns `true` if the given key is released within the given frame.
### Parameters:
- `key: Key` - A key, from the `keys` enum.
### Returns:
- `boolean` - Whether or not the key has been released this frame.


<a id="function-utils-iskeydown"></a>
## `function utils.IsKeyDown(key)`
(READ-ONLY) Returns `true` if the given key is held down within the given frame.
### Parameters:
- `key: Key` - A key, from the `keys` enum.
### Returns:
- `boolean` - Whether or not the key is currently being held down.


<a id="function-utils-iskeyup"></a>
## `function utils.IsKeyUp(key)`
(READ-ONLY) Returns `true` if the given key is not held down within the given frame.
### Parameters:
- `key: Key` - A key, from the `keys` enum.
### Returns:
- `boolean` - Whether or not the key is currently not held down.


<a id="function-utils-generatetiminggroupid"></a>
## `function utils.GenerateTimingGroupId(prefix)`
(READ-ONLY) Returns a unique `tgId` with the given prefix. If no prefix is given, defaults to `SG_`.
### Parameters:
- `prefix?: string` - An optional prefix to all of the ids.
### Returns:
- `string` - The new timing group id, to be passed into an [`EditorAction`](#class-editoraction) (of type `CreateTimingGroup`).


<a id="function-utils-generatetiminggroupids"></a>
## `function utils.GenerateTimingGroupIds(count, prefix)`
(READ-ONLY) Returns `count` number of `tgIds` with the given prefix. If no prefix is given, defaults to `SG_`.
### Parameters:
- `count: integer` - The number of timing group ids to generate.
- `prefix?: string` - An optional prefix to all of the ids.
### Returns:
- `string[]` - The new timing group ids, to be passed into some [`EditorActions`](#class-editoraction) (of type `CreateTimingGroup`).
<a id="global-map"></a>
# global `map`
<a id="attribute-map-mode"></a>
## `attribute map.Mode`

### Type: `number`
(READ-ONLY)
 Returns `1` in 4k, `2` in 7k.

<a id="attribute-map-normalized"></a>
## `attribute map.Normalized`

### Type: `boolean`
(READ-ONLY)
 `true` if BPM does not affect [scroll velocity](#class-scrollvelocity).

<a id="attribute-map-scrollvelocities"></a>
## `attribute map.ScrollVelocities`

### Type: `ScrollVelocity[]`
(READ-ONLY)
 A table of all [scroll velocities](#class-scrollvelocity) in the current timing group.

<a id="attribute-map-scrollspeedfactors"></a>
## `attribute map.ScrollSpeedFactors`

### Type: `ScrollSpeedFactor[]`
(READ-ONLY)
 A table of all [scroll speed factors](#class-scrollspeedfactor) in the current timing group.

<a id="attribute-map-timinggroups"></a>
## `attribute map.TimingGroups`

### Type: `{ [string]: ScrollGroup}`
(READ-ONLY)
 A table of all [timing groups](#class-scrollgroup) in the map, where the keys are the identifiers of the scroll group.

<a id="attribute-map-defaultscrollgroup"></a>
## `attribute map.DefaultScrollGroup`

### Type: `ScrollGroup`
(READ-ONLY)
 The default [scroll group](#class-scrollgroup).

<a id="attribute-map-globalscrollgroup"></a>
## `attribute map.GlobalScrollGroup`

### Type: `ScrollGroup`
(READ-ONLY)
 The global [scroll group](#class-scrollgroup).

<a id="attribute-map-hitobjects"></a>
## `attribute map.HitObjects`

### Type: `HitObject[]`
(READ-ONLY)
 A table of all [hit objects](#class-hitobject) in the map.

<a id="attribute-map-timingpoints"></a>
## `attribute map.TimingPoints`

### Type: `TimingPoint[]`
(READ-ONLY)
 A table of all [timing points](#class-timingpoint) in the map.

<a id="attribute-map-editorlayers"></a>
## `attribute map.EditorLayers`

### Type: `EditorLayer[]`
(READ-ONLY)
 A table of all [editor layers](#class-editorlayer) in the map.

<a id="attribute-map-bookmarks"></a>
## `attribute map.Bookmarks`

### Type: `Bookmark[]`
(READ-ONLY)
 A table of all [bookmarks](#class-bookmark) in the map.

<a id="attribute-map-defaultlayer"></a>
## `attribute map.DefaultLayer`

### Type: `EditorLayer`
(READ-ONLY)
 The default [editor layer](#class-editorlayer).

<a id="attribute-map-tracklength"></a>
## `attribute map.TrackLength`

### Type: `number`
(READ-ONLY)
 The length of the song, in milliseconds.

<a id="attribute-map-legacylnrendering"></a>
## `attribute map.LegacyLNRendering`

### Type: `boolean`
(READ-ONLY)
 `true` if the "Legacy LN Rendering" option is enabled.

<a id="attribute-map-initialscrollvelocity"></a>
## `attribute map.InitialScrollVelocity`

### Type: `number`
(READ-ONLY)
 The initial [scroll velocity](#class-scrollvelocity) multiplier of the current [scroll group](#class-scrollgroup). Defaults to 1.

<a id="function-map-tostring"></a>
## `function map.ToString()`
(READ-ONLY) Returns the map metadata in the form of `{Artist} - {Title} [{Difficulty}]`.
### Parameters:
- None
### Returns:
- `string` - The map metadata, as mentioned above.


<a id="function-map-getkeycount"></a>
## `function map.GetKeyCount(includeScratch)`
(READ-ONLY) Returns the number of possible keys within the map.
### Parameters:
- `includeScratch?: boolean` - Whether or not to include the scratch lane. This should almost never be true.
### Returns:
- `integer` - The number of keys in the map, usually 4 or 7.


<a id="function-map-getcommonbpm"></a>
## `function map.GetCommonBpm()`
(READ-ONLY) Returns the most common BPM in the map, determined by how much time a particular BPM is used.
### Parameters:
- None
### Returns:
- `number?` - The BPM. This number should be identical to the BPM displayed in the song select menu.


<a id="function-map-gettimingpointat"></a>
## `function map.GetTimingPointAt(time)`
(READ-ONLY) Returns the nearest [timing point](#class-timingpoint) before the given `time`.
### Parameters:
- `time: number` - The time to start looking from, in milliseconds.
### Returns:
- `TimingPoint?` - The requested [timing point](#class-timingpoint).


<a id="function-map-getscrollvelocityat"></a>
## `function map.GetScrollVelocityAt(time, tgId)`
(READ-ONLY) Returns the nearest [scroll velocity](#class-scrollvelocity) before the given `time`, within `tgId`. If `tgId` is not given, it will search within the currently selected [scroll group](#class-scrollgroup).
### Parameters:
- `time: number` - The time to start looking from, in milliseconds.
- `tgId?: string` - The [timing group](#class-scrollgroup) to look within. If this option is omitted, the function will search within the currently selected [timing group](#class-scrollgroup).
### Returns:
- `ScrollVelocity?` - The requested [scroll velocity](#class-scrollvelocity).


<a id="function-map-getscrollspeedfactorat"></a>
## `function map.GetScrollSpeedFactorAt(time, tgId)`
(READ-ONLY) Returns the nearest [scroll speed factor](#class-scrollspeedfactor) before the given `time`, within `tgId`. If `tgId` is not given, it will search within the currently selected [scroll group](#class-scrollgroup).
### Parameters:
- `time: number` - The time to start looking from, in milliseconds.
- `tgId?: string` - The [timing group](#class-scrollgroup) to look within. If this option is omitted, the function will search within the currently selected [timing group](#class-scrollgroup).
### Returns:
- `ScrollSpeedFactor?` - The requested [scroll speed factor](#class-scrollspeedfactor).


<a id="function-map-gettiminggroup"></a>
## `function map.GetTimingGroup(tgId)`
(READ-ONLY) Returns the [timing group](#class-scrollgroup) corresponding with the given id.
### Parameters:
- `tgId: string` - The id to search with.
### Returns:
- `ScrollGroup?` - The [timing group](#class-scrollgroup) corresponding to the id.


<a id="function-map-gettiminggroupids"></a>
## `function map.GetTimingGroupIds()`
(READ-ONLY) Returns a list of all [timing group](#class-scrollgroup) ids.
### Parameters:
- None
### Returns:
- `string[]` - The list of [timing group](#class-scrollgroup) ids.


<a id="function-map-gettiminggroupobjects"></a>
## `function map.GetTimingGroupObjects(tgId)`
(READ-ONLY) Returns all [hit objects](#class-hitobject) within the id's corresponding [timing group](#class-scrollgroup).
### Parameters:
- `tgId: string` - The [timing group](#class-scrollgroup) to look within.
### Returns:
- `HitObject[]?` - All [hit objects](#class-hitobject) within the requested [timing group](#class-scrollgroup).


<a id="function-map-getbookmarkat"></a>
## `function map.GetBookmarkAt(time)`
(READ-ONLY) Returns the nearest [bookmark](#class-bookmark) before the given `time`.
### Parameters:
- `time: number` - The time to start looking from, in milliseconds.
### Returns:
- `Bookmark?` - The requested [bookmark](#class-bookmark).


<a id="function-map-gettimingpointlength"></a>
## `function map.GetTimingPointLength(tp)`
(READ-ONLY) Returns the length of the given [timing point](#class-timingpoint), in milliseconds.
### Parameters:
- `tp: TimingPoint` - The timing point to use.
### Returns:
- `number?` - The duration between the given [timing point](#class-timingpoint) and the next [timing point](#class-timingpoint).


<a id="function-map-getnearestsnaptimefromtime"></a>
## `function map.GetNearestSnapTimeFromTime(forwards, snap, time)`
(READ-ONLY) Returns the nearest time where the snap lines up with the given snap.
### Parameters:
- `forwards: boolean` - Whether or not the nearest snap should be searched forwards or backwards in time.
- `snap: integer` - The denominator of the desired snap.
- `time: number` - The time to start looking from, in milliseconds.
### Returns:
- `number?` - The nearest time which follows the given snap.
