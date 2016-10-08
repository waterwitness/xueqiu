.class final Lcom/xueqiu/android/common/MainActivity$7$1;
.super Lcom/xueqiu/android/base/b/p;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/MainActivity$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/Remind;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity$7;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity$7;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$7$1;->a:Lcom/xueqiu/android/common/MainActivity$7;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 419
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 420
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 416
    check-cast p1, Lcom/xueqiu/android/community/model/Remind;

    .line 1425
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$7$1;->a:Lcom/xueqiu/android/common/MainActivity$7;

    iget-object v0, v0, Lcom/xueqiu/android/common/MainActivity$7;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/common/MainActivity;Lcom/xueqiu/android/community/model/Remind;)Lcom/xueqiu/android/community/model/Remind;

    .line 1426
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$7$1;->a:Lcom/xueqiu/android/common/MainActivity$7;

    iget-object v0, v0, Lcom/xueqiu/android/common/MainActivity$7;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_remind"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$7$1;->a:Lcom/xueqiu/android/common/MainActivity$7;

    iget-object v0, v0, Lcom/xueqiu/android/common/MainActivity$7;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/community/model/Remind;)V

    .line 416
    return-void
.end method
