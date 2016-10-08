.class final Lcom/xueqiu/android/common/setting/SettingActivity$19;
.super Landroid/os/AsyncTask;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$19;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 598
    :try_start_0
    invoke-virtual {v0}, Lcom/d/a/b/f;->e()V

    .line 599
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 601
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-static {}, Lcom/xueqiu/android/common/setting/SettingActivity$19;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 593
    check-cast p1, Ljava/lang/Boolean;

    .line 1606
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$19;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->i()V

    .line 1607
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    const-string v0, "\u6e05\u7406\u6210\u529f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 593
    :cond_0
    return-void
.end method
