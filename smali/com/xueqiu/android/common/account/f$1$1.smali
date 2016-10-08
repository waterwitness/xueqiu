.class final Lcom/xueqiu/android/common/account/f$1$1;
.super Ljava/lang/Object;
.source "ThirdAuthHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/f$1;->onSuccess(Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/xueqiu/android/common/account/f$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/f$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xueqiu/android/common/account/f$1$1;->b:Lcom/xueqiu/android/common/account/f$1;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/f$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f$1$1;->b:Lcom/xueqiu/android/common/account/f$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f$1;->a:Lcom/xueqiu/android/common/account/f;

    iget-object v1, v0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    iget-object v0, p0, Lcom/xueqiu/android/common/account/f$1$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tauth/bean/OpenId;

    invoke-virtual {v0}, Lcom/tencent/tauth/bean/OpenId;->getOpenId()Ljava/lang/String;

    move-result-object v0

    .line 1059
    iput-object v0, v1, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f$1$1;->b:Lcom/xueqiu/android/common/account/f$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f$1;->a:Lcom/xueqiu/android/common/account/f;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "qq"

    .line 2059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f$1$1;->b:Lcom/xueqiu/android/common/account/f$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f$1;->a:Lcom/xueqiu/android/common/account/f;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/c;->a(Lcom/xueqiu/android/common/account/c;)V

    .line 275
    return-void
.end method
