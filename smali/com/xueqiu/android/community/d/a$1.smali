.class final Lcom/xueqiu/android/community/d/a$1;
.super Lcom/xueqiu/android/base/b/p;
.source "PaidMentionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/community/d/a$1;->a:Lcom/xueqiu/android/community/d/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 47
    check-cast p1, Ljava/lang/Integer;

    .line 1055
    iget-object v0, p0, Lcom/xueqiu/android/community/d/a$1;->a:Lcom/xueqiu/android/community/d/a;

    .line 2023
    iget-object v0, v0, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-interface {v0, v2, v3}, Lcom/xueqiu/android/community/b/c;->a(D)V

    .line 47
    return-void
.end method
