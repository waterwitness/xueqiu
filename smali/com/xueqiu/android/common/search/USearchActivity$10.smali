.class final Lcom/xueqiu/android/common/search/USearchActivity$10;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->a(ZLandroid/graphics/Bitmap;Ljava/lang/String;J)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 341
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$10;->c:Lcom/xueqiu/android/common/search/USearchActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/search/USearchActivity$10;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xueqiu/android/common/search/USearchActivity$10;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 344
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$10;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$10;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$10;->c:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 348
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 349
    iget-wide v4, p0, Lcom/xueqiu/android/common/search/USearchActivity$10;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/xueqiu/android/common/search/USearchActivity$10$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/common/search/USearchActivity$10$1;-><init>(Lcom/xueqiu/android/common/search/USearchActivity$10;)V

    .line 348
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->d(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 368
    :try_start_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x898

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 370
    const-string v1, "ad_id"

    iget-wide v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$10;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 371
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
