.class final Lcom/xueqiu/android/common/account/c$3;
.super Ljava/lang/Object;
.source "ThirdAuthHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/c;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/xueqiu/android/common/account/c$3;->a:Lcom/xueqiu/android/common/account/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$3;->a:Lcom/xueqiu/android/common/account/c;

    .line 1488
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->finish()V

    .line 229
    return-void
.end method
