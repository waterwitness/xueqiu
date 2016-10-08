.class public Lcom/imbryk/viewPager/LoopViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "LoopViewPager.java"


# instance fields
.field b:Landroid/support/v4/view/cp;

.field private c:Lcom/imbryk/viewPager/a;

.field private d:Z

.field private e:Z

.field private f:Landroid/support/v4/view/cp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->d:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->e:Z

    .line 158
    new-instance v0, Lcom/imbryk/viewPager/LoopViewPager$1;

    invoke-direct {v0, p0}, Lcom/imbryk/viewPager/LoopViewPager$1;-><init>(Lcom/imbryk/viewPager/LoopViewPager;)V

    iput-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->f:Landroid/support/v4/view/cp;

    .line 122
    invoke-direct {p0}, Lcom/imbryk/viewPager/LoopViewPager;->g()V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->d:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->e:Z

    .line 158
    new-instance v0, Lcom/imbryk/viewPager/LoopViewPager$1;

    invoke-direct {v0, p0}, Lcom/imbryk/viewPager/LoopViewPager$1;-><init>(Lcom/imbryk/viewPager/LoopViewPager;)V

    iput-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->f:Landroid/support/v4/view/cp;

    .line 127
    invoke-direct {p0}, Lcom/imbryk/viewPager/LoopViewPager;->g()V

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/imbryk/viewPager/LoopViewPager;)Lcom/imbryk/viewPager/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    return-object v0
.end method

.method static synthetic b(Lcom/imbryk/viewPager/LoopViewPager;)I
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->f:Landroid/support/v4/view/cp;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .prologue
    .line 104
    .line 3067
    add-int/lit8 v0, p1, 0x1

    .line 105
    invoke-super {p0, v0, p2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 106
    return-void
.end method

.method public getAdapter()Landroid/support/v4/view/bd;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    .line 2089
    iget-object v0, v0, Lcom/imbryk/viewPager/a;->b:Landroid/support/v4/view/bd;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/imbryk/viewPager/a;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->e:Z

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->e:Z

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/bd;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/imbryk/viewPager/a;

    invoke-direct {v0, p1}, Lcom/imbryk/viewPager/a;-><init>(Landroid/support/v4/view/bd;)V

    iput-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    .line 88
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    iget-boolean v1, p0, Lcom/imbryk/viewPager/LoopViewPager;->d:Z

    .line 2042
    iput-boolean v1, v0, Lcom/imbryk/viewPager/a;->c:Z

    .line 89
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 90
    invoke-virtual {p0, v2, v2}, Lcom/imbryk/viewPager/LoopViewPager;->a(IZ)V

    .line 91
    return-void
.end method

.method public setBoundaryCaching(Z)V
    .locals 1

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/imbryk/viewPager/LoopViewPager;->d:Z

    .line 80
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/imbryk/viewPager/LoopViewPager;->c:Lcom/imbryk/viewPager/a;

    .line 1042
    iput-boolean p1, v0, Lcom/imbryk/viewPager/a;->c:Z

    .line 83
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/imbryk/viewPager/LoopViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/imbryk/viewPager/LoopViewPager;->a(IZ)V

    .line 113
    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/cp;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/imbryk/viewPager/LoopViewPager;->b:Landroid/support/v4/view/cp;

    .line 118
    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/imbryk/viewPager/LoopViewPager;->e:Z

    .line 140
    return-void
.end method
