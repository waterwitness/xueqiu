.class Landroid/support/v7/a/h;
.super Landroid/support/v7/a/g;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ae;
.implements Landroid/support/v7/internal/view/menu/q;


# static fields
.field private static final d:[I


# instance fields
.field private e:Landroid/support/v7/internal/widget/ActionBarView;

.field private f:Landroid/support/v7/internal/view/menu/n;

.field private g:Landroid/support/v7/internal/view/menu/p;

.field private h:Landroid/support/v7/c/a;

.field private i:Z

.field private j:Ljava/lang/CharSequence;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/b/c;->homeAsUpIndicator:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/a/h;->d:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/a/f;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/support/v7/a/g;-><init>(Landroid/support/v7/a/f;)V

    .line 78
    return-void
.end method

.method private l()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 596
    iget-boolean v2, p0, Landroid/support/v7/a/h;->n:Z

    if-eqz v2, :cond_0

    .line 659
    :goto_0
    return v0

    .line 601
    :cond_0
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/a/h;->o:Z

    if-eqz v2, :cond_6

    .line 602
    :cond_1
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    if-nez v2, :cond_2

    .line 3589
    new-instance v2, Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {p0}, Landroid/support/v7/a/h;->j()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/internal/view/menu/p;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    .line 3590
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/q;)V

    .line 603
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    if-nez v2, :cond_2

    move v0, v1

    .line 604
    goto :goto_0

    .line 608
    :cond_2
    iget-object v2, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v2, :cond_3

    .line 609
    iget-object v2, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v3, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v2, v3, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/c/a/a;Landroid/support/v7/internal/view/menu/ae;)V

    .line 614
    :cond_3
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/p;->d()V

    .line 617
    iget-object v2, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    iget-object v3, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/a/f;->a(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 619
    iput-object v4, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    .line 621
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_4

    .line 623
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v4, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/c/a/a;Landroid/support/v7/internal/view/menu/ae;)V

    :cond_4
    move v0, v1

    .line 626
    goto :goto_0

    .line 629
    :cond_5
    iput-boolean v1, p0, Landroid/support/v7/a/h;->o:Z

    .line 634
    :cond_6
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/p;->d()V

    .line 638
    iget-object v2, p0, Landroid/support/v7/a/h;->p:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    .line 639
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    iget-object v3, p0, Landroid/support/v7/a/h;->p:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/p;->b(Landroid/os/Bundle;)V

    .line 640
    iput-object v4, p0, Landroid/support/v7/a/h;->p:Landroid/os/Bundle;

    .line 644
    :cond_7
    iget-object v2, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    iget-object v3, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v2, v1, v4, v3}, Landroid/support/v7/a/f;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 645
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_8

    .line 648
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v4, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/c/a/a;Landroid/support/v7/internal/view/menu/ae;)V

    .line 650
    :cond_8
    iget-object v0, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->e()V

    move v0, v1

    .line 651
    goto :goto_0

    .line 654
    :cond_9
    iget-object v1, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/p;->e()V

    .line 657
    iput-boolean v0, p0, Landroid/support/v7/a/h;->n:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/support/v7/a/a;
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/support/v7/a/h;->k()V

    .line 83
    new-instance v0, Landroid/support/v7/a/n;

    iget-object v1, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    iget-object v2, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/a/n;-><init>(Landroid/support/v7/a/f;Landroid/support/v7/a/b;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/support/v7/a/h;->k()V

    .line 126
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 128
    iget-object v1, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v1}, Landroid/support/v7/a/f;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 130
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/p;)V
    .locals 1

    .prologue
    .line 362
    .line 3426
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3427
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3428
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3429
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->a()Z

    .line 3434
    :cond_0
    :goto_0
    return-void

    .line 3432
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->c()Z

    goto :goto_0

    .line 3437
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/p;->close()V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/p;Z)V
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Landroid/support/v7/a/h;->m:Z

    if-eqz v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/h;->m:Z

    .line 371
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0}, Landroid/support/v7/a/f;->closeOptionsMenu()V

    .line 372
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f()V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/h;->m:Z

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v7/a/h;->k()V

    .line 117
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 119
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/support/v7/a/h;->k()V

    .line 135
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iput-object p1, p0, Landroid/support/v7/a/h;->j:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/f;->a(ILandroid/view/Menu;)Z

    move-result v0

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ah;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p2

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/f;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/a/f;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/a/f;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 322
    .line 324
    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/support/v7/a/h;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    iget-object v1, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    .line 1441
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    if-eqz v2, :cond_2

    .line 1445
    iget-object v2, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/internal/view/menu/n;

    if-nez v2, :cond_4

    .line 1446
    sget-object v2, Landroid/support/v7/b/k;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1447
    const/4 v3, 0x4

    sget v4, Landroid/support/v7/b/j;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1450
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1452
    new-instance v2, Landroid/support/v7/internal/view/menu/n;

    sget v4, Landroid/support/v7/b/h;->abc_list_menu_item_layout:I

    invoke-direct {v2, v4, v3}, Landroid/support/v7/internal/view/menu/n;-><init>(II)V

    iput-object v2, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/internal/view/menu/n;

    .line 1454
    iget-object v2, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/internal/view/menu/n;

    .line 2140
    iput-object p0, v2, Landroid/support/v7/internal/view/menu/n;->g:Landroid/support/v7/internal/view/menu/ae;

    .line 1455
    iget-object v2, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    iget-object v3, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/ad;)V

    .line 1461
    :goto_0
    iget-object v2, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/internal/view/menu/n;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3101
    iget-object v1, v2, Landroid/support/v7/internal/view/menu/n;->h:Landroid/support/v7/internal/view/menu/o;

    if-nez v1, :cond_0

    .line 3102
    new-instance v1, Landroid/support/v7/internal/view/menu/o;

    invoke-direct {v1, v2}, Landroid/support/v7/internal/view/menu/o;-><init>(Landroid/support/v7/internal/view/menu/n;)V

    iput-object v1, v2, Landroid/support/v7/internal/view/menu/n;->h:Landroid/support/v7/internal/view/menu/o;

    .line 3105
    :cond_0
    iget-object v1, v2, Landroid/support/v7/internal/view/menu/n;->h:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3106
    iget-object v0, v2, Landroid/support/v7/internal/view/menu/n;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 3107
    iget-object v0, v2, Landroid/support/v7/internal/view/menu/n;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/b/h;->abc_expanded_menu_layout:I

    invoke-virtual {v0, v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, v2, Landroid/support/v7/internal/view/menu/n;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    .line 3109
    iget-object v0, v2, Landroid/support/v7/internal/view/menu/n;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, v2, Landroid/support/v7/internal/view/menu/n;->h:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3110
    iget-object v0, v2, Landroid/support/v7/internal/view/menu/n;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3112
    :cond_1
    iget-object v0, v2, Landroid/support/v7/internal/view/menu/n;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    .line 325
    :cond_2
    check-cast v0, Landroid/view/View;

    .line 328
    :cond_3
    return-object v0

    .line 1458
    :cond_4
    iget-object v2, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2, v5}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/support/v7/a/h;->k()V

    .line 144
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 145
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/p;)Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/support/v7/a/h;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/a/h;->i:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/support/v7/a/h;->b()Landroid/support/v7/a/a;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/n;

    .line 1151
    iget-object v1, v0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/view/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/n;->f(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/support/v7/a/h;->b()Landroid/support/v7/a/a;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/n;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/n;->g(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/support/v7/a/h;->b()Landroid/support/v7/a/a;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/n;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/n;->g(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    iget-object v1, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 410
    iput-object v0, p0, Landroid/support/v7/a/h;->p:Landroid/os/Bundle;

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->d()V

    .line 414
    iget-object v0, p0, Landroid/support/v7/a/h;->g:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->clear()V

    .line 416
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/h;->o:Z

    .line 419
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/h;->n:Z

    .line 421
    invoke-direct {p0}, Landroid/support/v7/a/h;->l()Z

    .line 423
    :cond_2
    return-void
.end method

.method public final h()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 467
    iget-object v2, p0, Landroid/support/v7/a/h;->h:Landroid/support/v7/c/a;

    if-eqz v2, :cond_1

    .line 468
    iget-object v1, p0, Landroid/support/v7/a/h;->h:Landroid/support/v7/c/a;

    invoke-virtual {v1}, Landroid/support/v7/c/a;->a()V

    .line 478
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    iget-object v2, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    .line 3476
    iget-object v3, v2, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/support/v7/internal/widget/e;

    if-eqz v3, :cond_2

    iget-object v2, v2, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/support/v7/internal/widget/e;

    iget-object v2, v2, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    if-eqz v2, :cond_2

    move v2, v0

    .line 473
    :goto_1
    if-eqz v2, :cond_4

    .line 474
    iget-object v1, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    .line 3481
    iget-object v2, v1, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/support/v7/internal/widget/e;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 3483
    :goto_2
    if-eqz v1, :cond_0

    .line 3484
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/t;->collapseActionView()Z

    goto :goto_0

    :cond_2
    move v2, v1

    .line 3476
    goto :goto_1

    .line 3481
    :cond_3
    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/support/v7/internal/widget/e;

    iget-object v1, v1, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    goto :goto_2

    :cond_4
    move v0, v1

    .line 478
    goto :goto_0
.end method

.method final k()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 155
    iget-boolean v0, p0, Landroid/support/v7/a/h;->i:Z

    if-nez v0, :cond_8

    .line 156
    iget-boolean v0, p0, Landroid/support/v7/a/h;->b:Z

    if-eqz v0, :cond_b

    .line 157
    iget-boolean v0, p0, Landroid/support/v7/a/h;->c:Z

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget v1, Landroid/support/v7/b/h;->abc_action_bar_decor_overlay:I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->a(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget v1, Landroid/support/v7/b/f;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    .line 163
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 168
    iget-boolean v0, p0, Landroid/support/v7/a/h;->k:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g()V

    .line 171
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/a/h;->l:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h()V

    .line 178
    :cond_1
    const-string v0, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Landroid/support/v7/a/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 182
    if-eqz v6, :cond_a

    .line 183
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0}, Landroid/support/v7/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/d;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    move v2, v0

    .line 192
    :goto_1
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget v1, Landroid/support/v7/b/f;->split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 194
    if-eqz v0, :cond_2

    .line 195
    iget-object v1, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 196
    iget-object v1, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 197
    iget-object v1, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v6}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 199
    iget-object v1, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget v7, Landroid/support/v7/b/f;->action_context_bar:I

    invoke-virtual {v1, v7}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 201
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 202
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 203
    invoke-virtual {v1, v6}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 211
    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 213
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget v1, Landroid/support/v7/b/f;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 214
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 217
    iget-object v0, p0, Landroid/support/v7/a/h;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/a/h;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 219
    iput-object v3, p0, Landroid/support/v7/a/h;->j:Ljava/lang/CharSequence;

    .line 1237
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget-object v1, Landroid/support/v7/b/k;->ActionBarWindow:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1244
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1245
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1246
    const/4 v1, 0x3

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1248
    :goto_3
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1249
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1250
    invoke-virtual {v6, v10, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1252
    :goto_4
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1253
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1254
    invoke-virtual {v6, v11, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1256
    :goto_5
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1257
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1258
    const/4 v7, 0x4

    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1261
    :cond_4
    iget-object v7, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v7}, Landroid/support/v7/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1262
    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v8, v9, :cond_5

    const/4 v5, 0x1

    .line 1266
    :cond_5
    if-eqz v5, :cond_c

    .line 1267
    :goto_6
    if-eqz v1, :cond_11

    iget v0, v1, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_11

    .line 1268
    iget v0, v1, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_d

    .line 1269
    invoke-virtual {v1, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    .line 1275
    :goto_7
    if-eqz v5, :cond_e

    .line 1276
    :goto_8
    if-eqz v2, :cond_10

    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_10

    .line 1277
    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_f

    .line 1278
    invoke-virtual {v2, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1284
    :goto_9
    if-ne v1, v4, :cond_6

    if-eq v0, v4, :cond_7

    .line 1285
    :cond_6
    iget-object v2, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v2}, Landroid/support/v7/a/f;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1288
    :cond_7
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/h;->i:Z

    .line 227
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0}, Landroid/support/v7/a/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v7/a/h$1;

    invoke-direct {v1, p0}, Landroid/support/v7/a/h$1;-><init>(Landroid/support/v7/a/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 234
    :cond_8
    return-void

    .line 160
    :cond_9
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget v1, Landroid/support/v7/b/h;->abc_action_bar_decor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->a(I)V

    goto/16 :goto_0

    .line 186
    :cond_a
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget-object v1, Landroid/support/v7/b/k;->ActionBarWindow:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 187
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 189
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v0

    goto/16 :goto_1

    .line 206
    :cond_b
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/support/v7/a/f;

    sget v1, Landroid/support/v7/b/h;->abc_simple_decor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->a(I)V

    goto/16 :goto_2

    :cond_c
    move-object v1, v0

    .line 1266
    goto :goto_6

    .line 1270
    :cond_d
    iget v0, v1, Landroid/util/TypedValue;->type:I

    if-ne v0, v11, :cond_11

    .line 1271
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    invoke-virtual {v1, v0, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto :goto_7

    :cond_e
    move-object v2, v3

    .line 1275
    goto :goto_8

    .line 1279
    :cond_f
    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v11, :cond_10

    .line 1280
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v3, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_9

    :cond_10
    move v0, v4

    goto :goto_9

    :cond_11
    move v1, v4

    goto/16 :goto_7

    :cond_12
    move-object v2, v3

    goto/16 :goto_5

    :cond_13
    move-object v1, v3

    goto/16 :goto_4

    :cond_14
    move-object v0, v3

    goto/16 :goto_3
.end method
