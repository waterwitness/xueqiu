.class Landroid/support/v7/a/r;
.super Landroid/support/v7/a/a;
.source "ActionBarImplICS.java"


# instance fields
.field final a:Landroid/app/Activity;

.field final b:Landroid/support/v7/a/b;

.field final c:Landroid/app/ActionBar;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/a/b;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/a/r;-><init>(Landroid/app/Activity;Landroid/support/v7/a/b;Z)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/a/b;Z)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v7/a/a;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/r;->e:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Landroid/support/v7/a/r;->a:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Landroid/support/v7/a/r;->b:Landroid/support/v7/a/b;

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    .line 54
    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/support/v7/a/r;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/a/r;->e(Z)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 94
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/a/c;)V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget v1, p2, Landroid/support/v7/a/c;->a:I

    iput v1, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 88
    iget-object v1, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 89
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 175
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 145
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 180
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 160
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 185
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 341
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 230
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 190
    return-void
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const v6, 0x102002c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    .line 1384
    iget-object v0, p0, Landroid/support/v7/a/r;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 1385
    iget-object v0, p0, Landroid/support/v7/a/r;->a:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1386
    if-nez v0, :cond_1

    move-object v0, v1

    .line 319
    :goto_0
    if-eqz v0, :cond_0

    .line 320
    if-eqz p1, :cond_5

    .line 321
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 1391
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1392
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1393
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    move-object v0, v1

    .line 1395
    goto :goto_0

    .line 1398
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1399
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1400
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 1402
    :goto_2
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 1404
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/a/r;->d:Landroid/widget/ImageView;

    .line 1407
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/r;->d:Landroid/widget/ImageView;

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1400
    goto :goto_2

    .line 1411
    :cond_5
    iget-object v1, p0, Landroid/support/v7/a/r;->a:Landroid/app/Activity;

    new-array v2, v5, [I

    const v3, 0x101030b

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1413
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1414
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v7/a/r;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 366
    return-void
.end method
