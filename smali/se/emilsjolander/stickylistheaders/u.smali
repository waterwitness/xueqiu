.class final Lse/emilsjolander/stickylistheaders/u;
.super Landroid/widget/ListView;
.source "WrapperViewList.java"


# instance fields
.field a:Lse/emilsjolander/stickylistheaders/v;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Z

.field private e:Landroid/graphics/Rect;

.field private f:Ljava/lang/reflect/Field;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->e:Landroid/graphics/Rect;

    .line 26
    iput-boolean v1, p0, Lse/emilsjolander/stickylistheaders/u;->g:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/u;->d:Z

    .line 35
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorRect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->e:Landroid/graphics/Rect;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 40
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorPosition"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->f:Ljava/lang/reflect/Field;

    .line 41
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->f:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 48
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->b:Ljava/util/List;

    .line 130
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method private b()I
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->f:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/u;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 78
    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/u;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/u;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/u;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :goto_1
    return v0

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    :try_start_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 91
    :cond_2
    :goto_2
    const/4 v0, -0x1

    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method final a()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/u;->getFirstVisiblePosition()I

    move-result v2

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 177
    :goto_0
    return v2

    :cond_0
    move v0, v1

    .line 161
    :goto_1
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/u;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 162
    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/u;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ltz v3, :cond_2

    .line 163
    add-int/2addr v0, v2

    .line 171
    :goto_2
    iget-boolean v2, p0, Lse/emilsjolander/stickylistheaders/u;->g:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/u;->getPaddingTop()I

    move-result v2

    if-lez v2, :cond_1

    if-lez v0, :cond_1

    .line 172
    invoke-virtual {p0, v1}, Lse/emilsjolander/stickylistheaders/u;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_1

    .line 173
    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v2, v0

    .line 177
    goto :goto_0

    .line 161
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final addFooterView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/u;->a(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public final addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 123
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/u;->a(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 96
    .line 1061
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/u;->b()I

    move-result v0

    .line 1063
    if-ltz v0, :cond_0

    .line 1064
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/u;->a()I

    move-result v1

    .line 1065
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/u;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    instance-of v1, v0, Lse/emilsjolander/stickylistheaders/t;

    if-eqz v1, :cond_0

    .line 1067
    check-cast v0, Lse/emilsjolander/stickylistheaders/t;

    .line 1068
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/u;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getTop()I

    move-result v2

    iget v0, v0, Lse/emilsjolander/stickylistheaders/t;->e:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 97
    :cond_0
    iget v0, p0, Lse/emilsjolander/stickylistheaders/u;->c:I

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 100
    iget v1, p0, Lse/emilsjolander/stickylistheaders/u;->c:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->a:Lse/emilsjolander/stickylistheaders/v;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/v;->a(Landroid/graphics/Canvas;)V

    .line 108
    return-void

    .line 105
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected final layoutChildren()V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/u;->d:Z

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 195
    :cond_0
    return-void
.end method

.method public final performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 54
    instance-of v0, p1, Lse/emilsjolander/stickylistheaders/t;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lse/emilsjolander/stickylistheaders/t;

    iget-object p1, p1, Lse/emilsjolander/stickylistheaders/t;->a:Landroid/view/View;

    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public final removeFooterView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setClipToPadding(Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/u;->g:Z

    .line 183
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 184
    return-void
.end method
