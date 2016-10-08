.class public final Landroid/support/v7/internal/view/menu/o;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/n;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/n;)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/o;->b:I

    .line 235
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/o;->a()V

    .line 236
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/n;->c:Landroid/support/v7/internal/view/menu/p;

    .line 2332
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/p;->k:Landroid/support/v7/internal/view/menu/t;

    .line 274
    if-eqz v2, :cond_1

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/n;->c:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 278
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/t;

    .line 279
    if-ne v0, v2, :cond_0

    .line 280
    iput v1, p0, Landroid/support/v7/internal/view/menu/o;->b:I

    .line 286
    :goto_1
    return-void

    .line 277
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/o;->b:I

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/internal/view/menu/t;
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/n;->c:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->i()Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/n;)I

    move-result v0

    add-int/2addr v0, p1

    .line 250
    iget v2, p0, Landroid/support/v7/internal/view/menu/o;->b:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/support/v7/internal/view/menu/o;->b:I

    if-lt v0, v2, :cond_0

    .line 251
    add-int/lit8 v0, v0, 0x1

    .line 253
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/t;

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/n;->c:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/n;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 241
    iget v1, p0, Landroid/support/v7/internal/view/menu/o;->b:I

    if-gez v1, :cond_0

    .line 244
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/o;->a(I)Landroid/support/v7/internal/view/menu/t;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 259
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 263
    if-nez p2, :cond_0

    .line 264
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/n;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/n;

    iget v1, v1, Landroid/support/v7/internal/view/menu/n;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 267
    check-cast v0, Landroid/support/v7/internal/view/menu/ag;

    .line 268
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/o;->a(I)Landroid/support/v7/internal/view/menu/t;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/internal/view/menu/ag;->a(Landroid/support/v7/internal/view/menu/t;)V

    .line 269
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/o;->a()V

    .line 291
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 292
    return-void
.end method
