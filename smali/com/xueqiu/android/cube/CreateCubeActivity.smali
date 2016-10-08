.class public Lcom/xueqiu/android/cube/CreateCubeActivity;
.super Lcom/xueqiu/android/common/b;
.source "CreateCubeActivity.java"

# interfaces
.implements Lcom/xueqiu/android/cube/b/e;
.implements Lcom/xueqiu/android/cube/b/g;
.implements Lcom/xueqiu/android/cube/b/i;
.implements Lcom/xueqiu/android/cube/b/l;


# instance fields
.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/support/v4/view/ViewPager;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->q:Z

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CreateCubeActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CreateCubeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CreateCubeActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CreateCubeActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CreateCubeActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->q:Z

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/CreateCubeActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->j()V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/CreateCubeActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Holding;I)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/model/Holding;I)V

    .line 176
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/b/h;

    .line 4564
    iget-object v0, v0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 4478
    const-string v1, "arg_market"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->q:Z

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->j()V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/b/h;

    .line 5564
    iget-object v0, v0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 5474
    const-string v1, "arg_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0700b1

    const v3, 0x7f070070

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/b/h;

    .line 5976
    iget-object v2, v0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 6227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 5976
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 143
    :goto_0
    if-nez v0, :cond_2

    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070424

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CreateCubeActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CreateCubeActivity$3;-><init>(Lcom/xueqiu/android/cube/CreateCubeActivity;)V

    .line 147
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 171
    :goto_1
    return-void

    .line 5976
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    goto :goto_1

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    goto :goto_1

    .line 160
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070422

    .line 161
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CreateCubeActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CreateCubeActivity$4;-><init>(Lcom/xueqiu/android/cube/CreateCubeActivity;)V

    .line 163
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->setContentView(I)V

    .line 57
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->j:Landroid/widget/ProgressBar;

    .line 58
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    const-string v1, ""

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/d;->b(Ljava/lang/String;)Lcom/xueqiu/android/cube/b/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    invoke-static {}, Lcom/xueqiu/android/cube/b/k;->u()Lcom/xueqiu/android/cube/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->p:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lcom/xueqiu/android/cube/b/h;->a(ZZLcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/b/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/xueqiu/android/cube/c;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/cube/c;-><init>(Lcom/xueqiu/android/cube/CreateCubeActivity;Landroid/support/v4/a/q;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/xueqiu/android/cube/CreateCubeActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CreateCubeActivity$1;-><init>(Lcom/xueqiu/android/cube/CreateCubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/xueqiu/android/cube/CreateCubeActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/cube/CreateCubeActivity$2;-><init>(Lcom/xueqiu/android/cube/CreateCubeActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 3543
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/c;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 110
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
