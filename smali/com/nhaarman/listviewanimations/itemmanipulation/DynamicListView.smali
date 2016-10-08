.class public Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;
.super Landroid/widget/ListView;
.source "DynamicListView.java"


# instance fields
.field public a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nhaarman/listviewanimations/itemmanipulation/a/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/nhaarman/listviewanimations/itemmanipulation/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "listViewStyle"

    const-string v2, "attr"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/a;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;B)V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->d:Lcom/nhaarman/listviewanimations/itemmanipulation/a;

    .line 110
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->d:Lcom/nhaarman/listviewanimations/itemmanipulation/a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    return-object v0
.end method

.method private static a(Lcom/nhaarman/listviewanimations/itemmanipulation/b;Landroid/view/MotionEvent;)V
    .locals 2
    .param p0    # Lcom/nhaarman/listviewanimations/itemmanipulation/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 297
    if-eqz p0, :cond_0

    .line 298
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 299
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 300
    invoke-interface {p0, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b;->a(Landroid/view/MotionEvent;)Z

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 307
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    .line 4478
    iget-object v1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    if-eqz v1, :cond_0

    .line 4479
    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    invoke-virtual {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->draw(Landroid/graphics/Canvas;)V

    .line 310
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;

    if-nez v0, :cond_8

    .line 240
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    instance-of v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    check-cast v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;

    .line 3122
    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 240
    :goto_0
    if-nez v0, :cond_9

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-virtual {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Landroid/view/MotionEvent;)Z

    .line 244
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    .line 3255
    iget-wide v4, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    move v0, v2

    .line 245
    :goto_1
    if-eqz v0, :cond_1

    .line 246
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iput-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;

    .line 247
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    invoke-static {v3, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/b;Landroid/view/MotionEvent;)V

    .line 253
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    if-eqz v3, :cond_2

    .line 254
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    .line 3288
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 255
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    .line 4283
    iget-boolean v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->d:Z

    .line 256
    if-eqz v0, :cond_2

    .line 257
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    iput-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;

    .line 258
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v3, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/b;Landroid/view/MotionEvent;)V

    .line 262
    :cond_2
    if-eqz v0, :cond_3

    .line 265
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 266
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 267
    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 270
    :cond_3
    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    .line 272
    :cond_5
    :goto_3
    return v1

    :cond_6
    move v0, v1

    .line 3122
    goto :goto_0

    :cond_7
    move v0, v1

    .line 3255
    goto :goto_1

    .line 272
    :cond_8
    invoke-virtual {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method public fling(I)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    invoke-virtual {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(I)V

    .line 474
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 278
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;

    invoke-interface {v1, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b;->a(Landroid/view/MotionEvent;)Z

    .line 282
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 284
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/b;

    if-nez v1, :cond_3

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 207
    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->f:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/a;

    .line 210
    instance-of v0, p1, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 211
    check-cast v0, Landroid/widget/BaseAdapter;

    move-object v1, v0

    .line 212
    :goto_0
    instance-of v0, v1, Lcom/nhaarman/listviewanimations/b;

    if-eqz v0, :cond_1

    .line 213
    instance-of v0, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/a;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 214
    check-cast v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/a;

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->f:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/a;

    .line 216
    :cond_0
    check-cast v1, Lcom/nhaarman/listviewanimations/b;

    .line 2067
    iget-object v1, v1, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    goto :goto_0

    .line 219
    :cond_1
    instance-of v0, v1, Lcom/nhaarman/listviewanimations/a/c;

    if-eqz v0, :cond_3

    .line 220
    new-instance v1, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

    move-object v0, p1

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-direct {v1, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

    .line 221
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

    .line 2113
    new-instance v1, Lcom/nhaarman/listviewanimations/a/a;

    invoke-direct {v1, p0}, Lcom/nhaarman/listviewanimations/a/a;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->a(Lcom/nhaarman/listviewanimations/a/d;)V

    .line 222
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

    .line 226
    :goto_1
    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    .line 2169
    invoke-virtual {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Landroid/widget/ListAdapter;)V

    .line 231
    :cond_2
    return-void

    :cond_3
    move-object v0, p1

    goto :goto_1
.end method

.method public setDismissableManager(Lcom/nhaarman/listviewanimations/itemmanipulation/b/a;)V
    .locals 1
    .param p1    # Lcom/nhaarman/listviewanimations/itemmanipulation/b/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 457
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    .line 7186
    iput-object p1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a;

    .line 460
    :cond_0
    return-void
.end method

.method public setDraggableManager(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;)V
    .locals 1
    .param p1    # Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 398
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    .line 5243
    iput-object p1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;

    .line 401
    :cond_0
    return-void
.end method

.method public setMinimumAlpha(F)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    .line 8195
    iput p1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->c:F

    .line 501
    :cond_0
    return-void
.end method

.method public setOnItemMovedListener(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/n;)V
    .locals 1
    .param p1    # Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    .line 5250
    iput-object p1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/n;

    .line 413
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->d:Lcom/nhaarman/listviewanimations/itemmanipulation/a;

    .line 1571
    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/a;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 115
    instance-of v0, p1, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setScrollSpeed(F)V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    .line 6199
    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;

    .line 6647
    iput p1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->a:F

    .line 447
    :cond_0
    return-void
.end method

.method public setSwipeTouchChild(I)V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    .line 7217
    iput p1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->f:I

    .line 7218
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->e:Z

    .line 488
    :cond_0
    return-void
.end method
