.class final Lcom/xueqiu/android/base/util/ap$14;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ai;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$14;->a:Lcom/xueqiu/android/base/b/ai;

    iput-wide p2, p0, Lcom/xueqiu/android/base/util/ap$14;->b:J

    iput-object p4, p0, Lcom/xueqiu/android/base/util/ap$14;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 241
    check-cast p1, Lrx/i;

    .line 1244
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$14;->a:Lcom/xueqiu/android/base/b/ai;

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/ap$14;->b:J

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$14;->c:Ljava/lang/String;

    new-instance v4, Lcom/xueqiu/android/base/util/ap$14$1;

    invoke-direct {v4, p0, p1}, Lcom/xueqiu/android/base/util/ap$14$1;-><init>(Lcom/xueqiu/android/base/util/ap$14;Lrx/i;)V

    .line 1342
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/aj;->a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 241
    return-void
.end method
