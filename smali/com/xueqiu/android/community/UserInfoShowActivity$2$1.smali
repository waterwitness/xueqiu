.class final Lcom/xueqiu/android/community/UserInfoShowActivity$2$1;
.super Ljava/lang/Object;
.source "UserInfoShowActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserInfoShowActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserInfoShowActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserInfoShowActivity$2;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$2$1;->a:Lcom/xueqiu/android/community/UserInfoShowActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 86
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1089
    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$2$1;->a:Lcom/xueqiu/android/community/UserInfoShowActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/community/UserInfoShowActivity$2;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/UserInfoShowActivity;->a(Lcom/xueqiu/android/community/UserInfoShowActivity;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 1090
    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$2$1;->a:Lcom/xueqiu/android/community/UserInfoShowActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/community/UserInfoShowActivity$2;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->b(Lcom/xueqiu/android/community/UserInfoShowActivity;)V

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$2$1;->a:Lcom/xueqiu/android/community/UserInfoShowActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/community/UserInfoShowActivity$2;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->c(Lcom/xueqiu/android/community/UserInfoShowActivity;)V

    .line 86
    return-void
.end method
