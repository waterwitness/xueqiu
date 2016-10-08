.class public final Lcom/xueqiu/android/common/a;
.super Lcom/xueqiu/android/common/c;
.source "AboutUsFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/am;


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Lcom/xueqiu/android/common/widget/aj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 132
    new-instance v0, Lcom/xueqiu/android/common/a$5;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/a$5;-><init>(Lcom/xueqiu/android/common/a;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/a;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/a;)V
    .locals 2

    .prologue
    .line 1146
    new-instance v0, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v0}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 3105
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 1153
    const-string v1, "\u96ea\u7403: \u4e00\u4e2a\u793e\u4ea4\u6295\u8d44\u7f51\u7edc"

    .line 3121
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 1154
    const-string v1, "http://xueqiu.com/"

    .line 3129
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 1156
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/a;->b:Lcom/xueqiu/android/common/widget/aj;

    .line 49
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/common/a;)Lcom/xueqiu/android/common/widget/aj;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/common/a;->b:Lcom/xueqiu/android/common/widget/aj;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 58
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/a;->d(I)V

    .line 59
    const v0, 0x7f030028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0129

    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 68
    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    const v0, 0x7f0e012a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/common/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    new-instance v1, Lcom/xueqiu/android/common/a$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/a$1;-><init>(Lcom/xueqiu/android/common/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0e012d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/a;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/a$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/a$2;-><init>(Lcom/xueqiu/android/common/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/a;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/a$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/a$3;-><init>(Lcom/xueqiu/android/common/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0e012e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/xueqiu/android/common/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_0
    const v0, 0x7f0e0127

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/a;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/a$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/a$4;-><init>(Lcom/xueqiu/android/common/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "AboutUsActivity"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 5

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_share_content"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 176
    :goto_0
    if-eqz v3, :cond_0

    .line 178
    :try_start_1
    const-string v2, "updated"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 184
    :cond_0
    :goto_1
    new-instance v2, Lcom/xueqiu/android/common/a$6;

    invoke-direct {v2, p0, p0, v3, p1}, Lcom/xueqiu/android/common/a$6;-><init>(Lcom/xueqiu/android/common/a;Lcom/xueqiu/android/base/b/q;Lorg/json/JSONObject;I)V

    .line 244
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    .line 245
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->a(IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 247
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a;->y()Landroid/app/Dialog;

    .line 249
    :goto_2
    return-void

    .line 169
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 173
    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_0

    .line 180
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
