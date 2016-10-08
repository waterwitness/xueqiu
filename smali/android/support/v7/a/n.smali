.class Landroid/support/v7/a/n;
.super Landroid/support/v7/a/a;
.source "ActionBarImplBase.java"


# instance fields
.field a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/support/v7/a/f;

.field private f:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private g:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/support/v7/internal/widget/ActionBarView;

.field private j:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private k:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/a/o;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/support/v7/a/o;

.field private o:I

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Landroid/support/v7/a/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/a/f;Landroid/support/v7/a/b;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-direct {p0}, Landroid/support/v7/a/a;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/n;->m:Ljava/util/ArrayList;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/a/n;->o:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/n;->q:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/n;->b:Landroid/os/Handler;

    .line 95
    iput v2, p0, Landroid/support/v7/a/n;->t:I

    .line 101
    iput-boolean v1, p0, Landroid/support/v7/a/n;->w:Z

    .line 107
    iput-object p1, p0, Landroid/support/v7/a/n;->e:Landroid/support/v7/a/f;

    .line 108
    iput-object p1, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Landroid/support/v7/a/n;->y:Landroid/support/v7/a/b;

    .line 110
    iget-object v3, p0, Landroid/support/v7/a/n;->e:Landroid/support/v7/a/f;

    .line 1114
    sget v0, Landroid/support/v7/b/f;->action_bar_overlay_layout:I

    invoke-virtual {v3, v0}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/a/n;->f:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 1116
    iget-object v0, p0, Landroid/support/v7/a/n;->f:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Landroid/support/v7/a/n;->f:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBar(Landroid/support/v7/a/a;)V

    .line 1119
    :cond_0
    sget v0, Landroid/support/v7/b/f;->action_bar:I

    invoke-virtual {v3, v0}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    .line 1120
    sget v0, Landroid/support/v7/b/f;->action_context_bar:I

    invoke-virtual {v3, v0}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/a/n;->j:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1121
    sget v0, Landroid/support/v7/b/f;->action_bar_container:I

    invoke-virtual {v3, v0}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 1122
    sget v0, Landroid/support/v7/b/f;->top_action_bar:I

    invoke-virtual {v3, v0}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    .line 1123
    iget-object v0, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1124
    iget-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    .line 1126
    :cond_1
    sget v0, Landroid/support/v7/b/f;->split_action_bar:I

    invoke-virtual {v3, v0}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 1128
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/a/n;->j:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_3

    .line 1129
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v3, p0, Landroid/support/v7/a/n;->j:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V

    .line 1134
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/v7/a/n;->r:I

    .line 1138
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 1139
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    move v3, v1

    .line 1140
    :goto_1
    if-eqz v3, :cond_4

    .line 1141
    iput-boolean v1, p0, Landroid/support/v7/a/n;->p:Z

    .line 1144
    :cond_4
    iget-object v0, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v4

    .line 2079
    iget-object v0, v4, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-ge v0, v5, :cond_9

    move v0, v1

    .line 1145
    :goto_2
    if-nez v0, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    invoke-virtual {p0, v2}, Landroid/support/v7/a/n;->e(Z)V

    .line 1146
    invoke-virtual {v4}, Landroid/support/v7/internal/view/a;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/n;->f(Z)V

    .line 1147
    iget-object v0, p0, Landroid/support/v7/a/n;->e:Landroid/support/v7/a/f;

    invoke-virtual {v0}, Landroid/support/v7/a/f;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/n;->a(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    :cond_7
    move v0, v2

    .line 1134
    goto :goto_0

    :cond_8
    move v3, v2

    .line 1139
    goto :goto_1

    :cond_9
    move v0, v2

    .line 2079
    goto :goto_2
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 294
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/a/n;->p:Z

    .line 297
    :cond_0
    iget-object v1, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 298
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/support/v7/a/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/n;->a(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    return-void
.end method

.method public final a(Landroid/support/v7/a/e;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 466
    .line 5362
    iget-object v1, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    .line 466
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/a/e;->a()I

    move-result v0

    :cond_0
    iput v0, p0, Landroid/support/v7/a/n;->o:I

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    iget-object v1, p0, Landroid/support/v7/a/n;->e:Landroid/support/v7/a/f;

    invoke-virtual {v1}, Landroid/support/v7/a/f;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/ac;->c()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 474
    iget-object v2, p0, Landroid/support/v7/a/n;->n:Landroid/support/v7/a/o;

    if-ne v2, p1, :cond_4

    .line 475
    iget-object v0, p0, Landroid/support/v7/a/n;->n:Landroid/support/v7/a/o;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/support/v7/a/e;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(I)V

    .line 490
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    goto :goto_0

    .line 480
    :cond_4
    iget-object v2, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/a/e;->a()I

    move-result v0

    :cond_5
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 484
    check-cast p1, Landroid/support/v7/a/o;

    iput-object p1, p0, Landroid/support/v7/a/n;->n:Landroid/support/v7/a/o;

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v7/a/c;)V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 307
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/n;->a(II)V

    .line 308
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/n;->a(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 312
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/n;->a(II)V

    .line 313
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 285
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/n;->p:Z

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 289
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 317
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/n;->a(II)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Landroid/support/v7/a/n;->u:Z

    if-nez v0, :cond_0

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/n;->u:Z

    .line 561
    invoke-virtual {p0}, Landroid/support/v7/a/n;->f()V

    .line 563
    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 367
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    .line 368
    packed-switch v0, :pswitch_data_0

    .line 375
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 376
    packed-switch p1, :pswitch_data_1

    .line 386
    :cond_0
    :goto_1
    iget-object v1, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    if-ne p1, v4, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/a/n;->s:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 387
    return-void

    .line 3240
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    move v0, v1

    .line 370
    :goto_3
    iput v0, p0, Landroid/support/v7/a/n;->o:I

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/n;->a(Landroid/support/v7/a/e;)V

    .line 372
    iget-object v0, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 3242
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/a/n;->n:Landroid/support/v7/a/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/n;->n:Landroid/support/v7/a/o;

    .line 3685
    iget v0, v0, Landroid/support/v7/a/o;->a:I

    goto :goto_3

    :cond_1
    move v0, v1

    .line 3242
    goto :goto_3

    .line 3244
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_3

    .line 3919
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_2

    .line 3923
    new-instance v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget-object v3, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 3925
    iget-boolean v3, p0, Landroid/support/v7/a/n;->s:Z

    if-eqz v3, :cond_3

    .line 3926
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 3927
    iget-object v3, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 3936
    :goto_4
    iput-object v0, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 379
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 380
    iget v0, p0, Landroid/support/v7/a/n;->o:I

    if-eq v0, v1, :cond_0

    .line 381
    iget v0, p0, Landroid/support/v7/a/n;->o:I

    .line 5225
    iget-object v3, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v3

    packed-switch v3, :pswitch_data_3

    .line 5233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4362
    :cond_3
    iget-object v3, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v3

    .line 3929
    if-ne v3, v4, :cond_4

    .line 3930
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 3934
    :goto_5
    iget-object v3, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_4

    .line 3932
    :cond_4
    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_5

    .line 5227
    :pswitch_4
    iget-object v3, p0, Landroid/support/v7/a/n;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    invoke-virtual {p0, v0}, Landroid/support/v7/a/n;->a(Landroid/support/v7/a/e;)V

    .line 382
    :goto_6
    iput v1, p0, Landroid/support/v7/a/n;->o:I

    goto/16 :goto_1

    .line 5230
    :pswitch_5
    iget-object v3, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    goto :goto_6

    :cond_5
    move v0, v2

    .line 386
    goto/16 :goto_2

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 376
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    .line 3240
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 5225
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 322
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/n;->a(II)V

    .line 323
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Landroid/content/Context;
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Landroid/support/v7/a/n;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 514
    iget-object v1, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 515
    sget v2, Landroid/support/v7/b/c;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 516
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 518
    if-eqz v0, :cond_1

    .line 519
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/a/n;->d:Landroid/content/Context;

    .line 524
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/n;->d:Landroid/content/Context;

    return-object v0

    .line 521
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/a/n;->d:Landroid/content/Context;

    goto :goto_0
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeAsUpIndicator(I)V

    .line 535
    return-void
.end method

.method public final e(Z)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 328
    return-void
.end method

.method final f()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 980
    iget-boolean v2, p0, Landroid/support/v7/a/n;->u:Z

    iget-boolean v3, p0, Landroid/support/v7/a/n;->v:Z

    iget-boolean v4, p0, Landroid/support/v7/a/n;->c:Z

    .line 5969
    if-nez v4, :cond_4

    .line 5971
    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    move v2, v1

    .line 982
    :goto_0
    if-eqz v2, :cond_6

    .line 983
    iget-boolean v2, p0, Landroid/support/v7/a/n;->w:Z

    if-nez v2, :cond_3

    .line 984
    iput-boolean v0, p0, Landroid/support/v7/a/n;->w:Z

    .line 6006
    iget-object v2, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 6007
    iget-object v2, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 6011
    invoke-virtual {p0}, Landroid/support/v7/a/n;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6013
    :goto_1
    if-eqz v0, :cond_1

    .line 6014
    iget-object v2, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    sget v3, Landroid/support/v7/b/b;->abc_slide_in_top:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 6015
    iget-object v3, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6017
    :cond_1
    iget-object v2, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6019
    iget-object v2, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 6020
    if-eqz v0, :cond_2

    .line 6021
    iget-object v0, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    sget v2, Landroid/support/v7/b/b;->abc_slide_in_bottom:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6022
    iget-object v2, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6024
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 993
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v0

    .line 5974
    goto :goto_0

    :cond_5
    move v0, v1

    .line 6011
    goto :goto_1

    .line 988
    :cond_6
    iget-boolean v2, p0, Landroid/support/v7/a/n;->w:Z

    if-eqz v2, :cond_3

    .line 989
    iput-boolean v1, p0, Landroid/support/v7/a/n;->w:Z

    .line 6029
    iget-object v2, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 6030
    iget-object v2, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 6034
    invoke-virtual {p0}, Landroid/support/v7/a/n;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6036
    :goto_3
    if-eqz v0, :cond_7

    .line 6037
    iget-object v1, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    sget v2, Landroid/support/v7/b/b;->abc_slide_out_top:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 6038
    iget-object v2, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6040
    :cond_7
    iget-object v1, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6042
    iget-object v1, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 6043
    if-eqz v0, :cond_8

    .line 6044
    iget-object v0, p0, Landroid/support/v7/a/n;->a:Landroid/content/Context;

    sget v1, Landroid/support/v7/b/b;->abc_slide_out_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6046
    iget-object v1, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6048
    :cond_8
    iget-object v0, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_2

    :cond_9
    move v0, v1

    .line 6034
    goto :goto_3
.end method

.method final f(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iput-boolean p1, p0, Landroid/support/v7/a/n;->s:Z

    .line 157
    iget-boolean v0, p0, Landroid/support/v7/a/n;->s:Z

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 159
    iget-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 2362
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    .line 164
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 165
    :goto_1
    iget-object v3, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 166
    if-eqz v0, :cond_3

    .line 167
    iget-object v3, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 172
    :cond_0
    :goto_2
    iget-object v3, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    iget-boolean v4, p0, Landroid/support/v7/a/n;->s:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 173
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/n;->g:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/a/n;->i:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v3, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 164
    goto :goto_1

    .line 169
    :cond_3
    iget-object v3, p0, Landroid/support/v7/a/n;->l:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 172
    goto :goto_3
.end method

.method public final g(Z)V
    .locals 1

    .prologue
    .line 996
    iput-boolean p1, p0, Landroid/support/v7/a/n;->x:Z

    .line 997
    if-nez p1, :cond_0

    .line 998
    iget-object v0, p0, Landroid/support/v7/a/n;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 999
    iget-object v0, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Landroid/support/v7/a/n;->k:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1003
    :cond_0
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Landroid/support/v7/a/n;->x:Z

    return v0
.end method
