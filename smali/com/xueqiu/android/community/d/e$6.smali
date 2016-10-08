.class public final Lcom/xueqiu/android/community/d/e$6;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/e;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/d/e;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e$6;->a:Lcom/xueqiu/android/community/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 198
    check-cast p1, Ljava/util/ArrayList;

    .line 1201
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$6;->a:Lcom/xueqiu/android/community/d/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 1202
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1203
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$6;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xueqiu/android/community/b/o;->c(Ljava/util/ArrayList;)V

    .line 198
    return-void
.end method
