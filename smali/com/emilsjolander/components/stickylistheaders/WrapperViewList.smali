.class Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;
.super Landroid/widget/ListView;
.source "WrapperViewList.java"


# instance fields
.field private mClippingToPadding:Z

.field private mFooterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsIndexScrollEnabled:Z

.field private mLifeCycleListener:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$LifeCycleListener;

.field private mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

.field private mSelectorPositionField:Ljava/lang/reflect/Field;

.field private mSelectorRect:Landroid/graphics/Rect;

.field private mTopClippingLength:I

.field private onGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    .line 29
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mClippingToPadding:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mIsIndexScrollEnabled:Z

    .line 31
    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    .line 32
    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mGestureDetector:Landroid/view/GestureDetector;

    .line 72
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$1;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->onGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 40
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorRect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 45
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorPosition"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorPositionField:Ljava/lang/reflect/Field;

    .line 46
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorPositionField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 53
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mIsIndexScrollEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;)Lcom/emilsjolander/components/stickylistheaders/IndexScroller;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    return-object v0
.end method

.method private getSelectorPosition()I
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorPositionField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 136
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 137
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :goto_1
    return v0

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorPositionField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 150
    :cond_2
    :goto_2
    const/4 v0, -0x1

    goto :goto_1

    .line 147
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private positionSelectorRect()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getSelectorPosition()I

    move-result v0

    .line 122
    if-ltz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFixedFirstVisibleItem()I

    move-result v1

    .line 124
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .line 127
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->getTop()I

    move-result v2

    iget v0, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItemTop:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method containsFooterView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->positionSelectorRect()V

    .line 156
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mTopClippingLength:I

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 159
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mTopClippingLength:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 161
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mLifeCycleListener:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$LifeCycleListener;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$LifeCycleListener;->onDispatchDrawOccurred(Landroid/graphics/Canvas;)V

    .line 167
    return-void

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->draw(Landroid/graphics/Canvas;)V

    .line 63
    :cond_0
    return-void
.end method

.method getFixedFirstVisibleItem()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getFirstVisiblePosition()I

    move-result v2

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 226
    :goto_0
    return v2

    :cond_0
    move v0, v1

    .line 210
    :goto_1
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 211
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ltz v3, :cond_2

    .line 212
    add-int/2addr v0, v2

    .line 220
    :goto_2
    iget-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mClippingToPadding:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getPaddingTop()I

    move-result v2

    if-lez v2, :cond_1

    if-lez v0, :cond_1

    .line 221
    invoke-virtual {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_1

    .line 222
    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v2, v0

    .line 226
    goto :goto_0

    .line 210
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method isIndexScrollEnabled()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mIsIndexScrollEnabled:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 68
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->onSizeChanged(IIII)V

    .line 70
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mIsIndexScrollEnabled:Z

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->onGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mGestureDetector:Landroid/view/GestureDetector;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 113
    instance-of v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object p1, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 116
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mFooterViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setAdapter(Landroid/widget/Adapter;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mClippingToPadding:Z

    .line 232
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 233
    return-void
.end method

.method setIndexScrollEnabled(Z)V
    .locals 2

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mIsIndexScrollEnabled:Z

    .line 237
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mIsIndexScrollEnabled:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->hide()V

    goto :goto_0
.end method

.method setLifeCycleListener(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$LifeCycleListener;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mLifeCycleListener:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$LifeCycleListener;

    .line 171
    return-void
.end method

.method setTopClippingLength(I)V
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mTopClippingLength:I

    .line 200
    return-void
.end method
