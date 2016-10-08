.class final Landroid/support/v7/internal/view/menu/ac;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ab;

.field private b:Landroid/support/v7/internal/view/menu/p;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ab;Landroid/support/v7/internal/view/menu/p;)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ac;->a:Landroid/support/v7/internal/view/menu/ab;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/ac;->c:I

    .line 305
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/ac;->b:Landroid/support/v7/internal/view/menu/p;

    .line 306
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ac;->a()V

    .line 307
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/ac;)Landroid/support/v7/internal/view/menu/p;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->b:Landroid/support/v7/internal/view/menu/p;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->a:Landroid/support/v7/internal/view/menu/ab;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ab;->c(Landroid/support/v7/internal/view/menu/ab;)Landroid/support/v7/internal/view/menu/p;

    move-result-object v0

    .line 2332
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/p;->k:Landroid/support/v7/internal/view/menu/t;

    .line 348
    if-eqz v2, :cond_1

    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->a:Landroid/support/v7/internal/view/menu/ab;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ab;->c(Landroid/support/v7/internal/view/menu/ab;)Landroid/support/v7/internal/view/menu/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 351
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 352
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/t;

    .line 353
    if-ne v0, v2, :cond_0

    .line 354
    iput v1, p0, Landroid/support/v7/internal/view/menu/ac;->c:I

    .line 360
    :goto_1
    return-void

    .line 351
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/ac;->c:I

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/internal/view/menu/t;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->a:Landroid/support/v7/internal/view/menu/ab;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ab;->a(Landroid/support/v7/internal/view/menu/ab;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 321
    :goto_0
    iget v1, p0, Landroid/support/v7/internal/view/menu/ac;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/internal/view/menu/ac;->c:I

    if-lt p1, v1, :cond_0

    .line 322
    add-int/lit8 p1, p1, 0x1

    .line 324
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/t;

    return-object v0

    .line 319
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->g()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->a:Landroid/support/v7/internal/view/menu/ab;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ab;->a(Landroid/support/v7/internal/view/menu/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 312
    :goto_0
    iget v1, p0, Landroid/support/v7/internal/view/menu/ac;->c:I

    if-gez v1, :cond_1

    .line 313
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    :goto_1
    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->g()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ac;->a(I)Landroid/support/v7/internal/view/menu/t;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 330
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 334
    if-nez p2, :cond_1

    .line 335
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->a:Landroid/support/v7/internal/view/menu/ab;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ab;->b(Landroid/support/v7/internal/view/menu/ab;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/internal/view/menu/ab;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 338
    check-cast v0, Landroid/support/v7/internal/view/menu/ag;

    .line 339
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ac;->a:Landroid/support/v7/internal/view/menu/ab;

    iget-boolean v2, v2, Landroid/support/v7/internal/view/menu/ab;->d:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 340
    check-cast v2, Landroid/support/v7/internal/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/ac;->a(I)Landroid/support/v7/internal/view/menu/t;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/internal/view/menu/ag;->a(Landroid/support/v7/internal/view/menu/t;)V

    .line 343
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ac;->a()V

    .line 365
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 366
    return-void
.end method
