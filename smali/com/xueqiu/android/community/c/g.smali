.class public final Lcom/xueqiu/android/community/c/g;
.super Lcom/xueqiu/android/common/c;
.source "HotTopicFragment.java"


# instance fields
.field public a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private b:[Landroid/support/v4/a/i;

.field private c:[Ljava/lang/String;

.field private d:Lcom/viewpagerindicator/TabPageIndicator;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->b:[Landroid/support/v4/a/i;

    .line 81
    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->c:[Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 83
    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->d:Lcom/viewpagerindicator/TabPageIndicator;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/c/g;->e:I

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/g;I)Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 67
    .line 2130
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->b:[Landroid/support/v4/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->b:[Landroid/support/v4/a/i;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 2131
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/g;->u()V

    .line 2133
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->b:[Landroid/support/v4/a/i;

    aget-object v0, v0, p1

    .line 67
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/g;)[Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->b:[Landroid/support/v4/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/g;)Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/g;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->c:[Ljava/lang/String;

    return-object v0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->c:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/xueqiu/android/community/c/h;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->b:[Landroid/support/v4/a/i;

    .line 138
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/c/g;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 139
    new-instance v1, Lcom/xueqiu/android/community/c/h;

    invoke-direct {v1}, Lcom/xueqiu/android/community/c/h;-><init>()V

    .line 140
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 141
    const-string v3, "view_which"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/c/h;->e(Landroid/os/Bundle;)V

    .line 143
    iget-object v2, p0, Lcom/xueqiu/android/community/c/g;->b:[Landroid/support/v4/a/i;

    aput-object v1, v2, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 149
    const v0, 0x7f03022b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 150
    const-string v1, "TodayTopic"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/g;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->c:[Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/g;->u()V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 125
    const-string v1, "view_which"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/c/g;->e:I

    .line 126
    const-string v0, "TodayTopic"

    const-string v1, "onCreate fragment"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 156
    const-string v0, "TodayTopic"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v1, Lcom/xueqiu/android/community/c/i;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/g;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/c/i;-><init>(Lcom/xueqiu/android/community/c/g;Landroid/support/v4/a/q;)V

    .line 160
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/g;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/g;->c:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOffscreenPageLimit(I)V

    .line 163
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/g;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/g;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/support/v4/a/i;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/a/i;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->b:[Landroid/support/v4/a/i;

    .line 168
    :cond_0
    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/g;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/g;->d:Lcom/viewpagerindicator/TabPageIndicator;

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->d:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/g;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->d:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/xueqiu/android/community/c/g$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/g$1;-><init>(Lcom/xueqiu/android/community/c/g;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/community/c/g;->d:Lcom/viewpagerindicator/TabPageIndicator;

    iget v1, p0, Lcom/xueqiu/android/community/c/g;->e:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 188
    return-void
.end method
