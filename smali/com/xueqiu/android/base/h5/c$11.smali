.class final Lcom/xueqiu/android/base/h5/c$11;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/b;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;JJ)V
    .locals 1

    .prologue
    .line 875
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$11;->d:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$11;->a:Lcom/xueqiu/android/base/h5/b;

    iput-wide p3, p0, Lcom/xueqiu/android/base/h5/c$11;->b:J

    iput-wide p5, p0, Lcom/xueqiu/android/base/h5/c$11;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 875
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 1878
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$11;->d:Lcom/xueqiu/android/base/h5/c;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c$11;->a:Lcom/xueqiu/android/base/h5/b;

    iget-wide v4, p0, Lcom/xueqiu/android/base/h5/c$11;->b:J

    iget-wide v6, p0, Lcom/xueqiu/android/base/h5/c$11;->c:J

    invoke-static/range {v1 .. v7}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Ljava/lang/String;JJ)V

    .line 875
    return-void
.end method
