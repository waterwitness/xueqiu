.class public final Lcom/xueqiu/android/community/d/e$2;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/e;
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
.field final synthetic a:Lcom/xueqiu/android/community/d/e;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/d/e;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e$2;->a:Lcom/xueqiu/android/community/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 380
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1383
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$2;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 1384
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$2;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$2;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/community/b/o;->a(Lcom/xueqiu/android/community/model/User;Z)V

    .line 380
    return-void
.end method
