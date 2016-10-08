.class public Lcom/xueqiu/android/common/UserGuideActivity;
.super Lcom/xueqiu/android/common/b;
.source "UserGuideActivity.java"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private k:Lcom/xueqiu/android/common/i;

.field private p:Lcom/xueqiu/android/common/y;

.field private q:Lcom/xueqiu/android/common/f;

.field private r:Landroid/support/v4/a/q;

.field private s:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/UserGuideActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/UserGuideActivity;)Lcom/xueqiu/android/base/b/p;
    .locals 1

    .prologue
    .line 3114
    new-instance v0, Lcom/xueqiu/android/common/UserGuideActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/common/UserGuideActivity$3;-><init>(Lcom/xueqiu/android/common/UserGuideActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 21
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/UserGuideActivity;)V
    .locals 4

    .prologue
    .line 21
    .line 3157
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->r:Landroid/support/v4/a/q;

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 3158
    const v1, 0x7f040015

    const v2, 0x7f040014

    const v3, 0x7f040017

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/a/ac;->a(III)Landroid/support/v4/a/ac;

    .line 3160
    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/y;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3161
    const v1, 0x7f0e01ae

    iget-object v2, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    sget-object v3, Lcom/xueqiu/android/common/aa;->b:Lcom/xueqiu/android/common/aa;

    iget-object v3, v3, Lcom/xueqiu/android/common/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    .line 3162
    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    :goto_0
    return-void

    .line 3164
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/UserGuideActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/UserGuideActivity;)V
    .locals 4

    .prologue
    .line 21
    .line 3172
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->r:Landroid/support/v4/a/q;

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 3173
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->a()Landroid/support/v4/a/ac;

    .line 3174
    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->q:Lcom/xueqiu/android/common/f;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/f;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3175
    const v1, 0x7f0e01ae

    iget-object v2, p0, Lcom/xueqiu/android/common/UserGuideActivity;->q:Lcom/xueqiu/android/common/f;

    sget-object v3, Lcom/xueqiu/android/common/aa;->c:Lcom/xueqiu/android/common/aa;

    iget-object v3, v3, Lcom/xueqiu/android/common/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    .line 3176
    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->q:Lcom/xueqiu/android/common/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    :goto_0
    return-void

    .line 3178
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->q:Lcom/xueqiu/android/common/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    goto :goto_0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/UserGuideActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xueqiu/android/common/UserGuideActivity;->k()V

    return-void
.end method

.method static synthetic f(Lcom/xueqiu/android/common/UserGuideActivity;)Lcom/xueqiu/android/common/y;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/xueqiu/android/common/UserGuideActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 142
    sget-object v0, Lcom/xueqiu/android/common/UserGuideActivity;->j:Ljava/lang/String;

    const-string v1, "showInterestedTopicFragment"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->r:Landroid/support/v4/a/q;

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->b()Landroid/support/v4/a/ac;

    .line 145
    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/i;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const v1, 0x7f0e01ae

    iget-object v2, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    sget-object v3, Lcom/xueqiu/android/common/aa;->a:Lcom/xueqiu/android/common/aa;

    iget-object v3, v3, Lcom/xueqiu/android/common/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    .line 147
    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    sget-object v0, Lcom/xueqiu/android/common/UserGuideActivity;->j:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 53
    invoke-virtual {p0}, Lcom/xueqiu/android/common/UserGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    const-string v0, "has_visited_user_guide"

    invoke-static {v0, v2, p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const-string v0, "has_visited_user_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putBoolean(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/UserGuideActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->r:Landroid/support/v4/a/q;

    .line 60
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/UserGuideActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f0e01ad

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->s:Landroid/widget/LinearLayout;

    .line 1073
    new-instance v0, Lcom/xueqiu/android/common/i;

    invoke-direct {v0}, Lcom/xueqiu/android/common/i;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    .line 1074
    new-instance v0, Lcom/xueqiu/android/common/UserGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/UserGuideActivity$1;-><init>(Lcom/xueqiu/android/common/UserGuideActivity;)V

    .line 1087
    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->k:Lcom/xueqiu/android/common/i;

    .line 1289
    iput-object v0, v1, Lcom/xueqiu/android/common/i;->a:Lcom/xueqiu/android/common/j;

    .line 1089
    new-instance v0, Lcom/xueqiu/android/common/UserGuideActivity$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/UserGuideActivity$2;-><init>(Lcom/xueqiu/android/common/UserGuideActivity;)V

    .line 1107
    new-instance v1, Lcom/xueqiu/android/common/y;

    invoke-direct {v1}, Lcom/xueqiu/android/common/y;-><init>()V

    iput-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    .line 1108
    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity;->p:Lcom/xueqiu/android/common/y;

    .line 2143
    iput-object v0, v1, Lcom/xueqiu/android/common/y;->a:Lcom/xueqiu/android/common/z;

    .line 1110
    new-instance v0, Lcom/xueqiu/android/common/f;

    invoke-direct {v0}, Lcom/xueqiu/android/common/f;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity;->q:Lcom/xueqiu/android/common/f;

    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/common/UserGuideActivity;->k()V

    .line 64
    return-void
.end method

.method public overridePendingTransition(II)V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f040016

    const v1, 0x7f040008

    invoke-super {p0, v0, v1}, Lcom/xueqiu/android/common/b;->overridePendingTransition(II)V

    .line 70
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
