.class public Lcom/xueqiu/android/common/search/UserStatusSearchActivity;
.super Lcom/xueqiu/android/common/b;
.source "UserStatusSearchActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/xueqiu/android/community/model/User;

.field private k:Landroid/widget/EditText;

.field private p:Lcom/xueqiu/android/community/widget/i;

.field private q:Lcom/xueqiu/android/community/a/ak;

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->r:I

    return-void
.end method

.method private a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 3434
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    .line 3459
    const/16 v7, 0x14

    const-string v8, "time"

    move-object v5, v4

    move v6, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)Lcom/xueqiu/android/community/widget/i;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->p:Lcom/xueqiu/android/community/widget/i;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->r:I

    .line 102
    iget v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->r:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v2, 0x7f0d0149

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->j:Lcom/xueqiu/android/community/model/User;

    .line 50
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    new-instance v2, Landroid/support/v7/a/c;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/support/v7/a/c;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/a;->a(Landroid/view/View;Landroid/support/v7/a/c;)V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v6}, Landroid/support/v7/a/a;->d(Z)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v5}, Landroid/support/v7/a/a;->c(Z)V

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "\u641c\u7d22%s\u7684\u8ba8\u8bba"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ba;->b(Lcom/xueqiu/android/community/model/User;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    const v1, 0x7f070348

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity$1;-><init>(Lcom/xueqiu/android/common/search/UserStatusSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 83
    const v0, 0x7f0e01b4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 84
    new-instance v1, Lcom/xueqiu/android/community/widget/i;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->p:Lcom/xueqiu/android/community/widget/i;

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->p:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/community/widget/i;->c(Z)V

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->p:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/community/widget/i;->b(Z)V

    .line 88
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->q:Lcom/xueqiu/android/community/a/ak;

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->q:Lcom/xueqiu/android/community/a/ak;

    .line 3157
    iput-boolean v6, v0, Lcom/xueqiu/android/community/a/ak;->h:Z

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->p:Lcom/xueqiu/android/community/widget/i;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/UserStatusSearchActivity;->q:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 92
    return-void
.end method
