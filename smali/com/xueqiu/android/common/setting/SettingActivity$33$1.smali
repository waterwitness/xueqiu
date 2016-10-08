.class final Lcom/xueqiu/android/common/setting/SettingActivity$33$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity$33;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity$33;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity$33;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$33$1;->a:Lcom/xueqiu/android/common/setting/SettingActivity$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 258
    check-cast p1, Ljava/lang/Boolean;

    .line 1261
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    const-string v0, "\u66f4\u65b0\u7ec4\u4ef6\u6210\u529f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1264
    :cond_0
    const-string v0, "\u66f4\u65b0\u7ec4\u4ef6\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
