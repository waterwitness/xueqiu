.class final Lcom/xueqiu/android/base/b/ae$1;
.super Ljava/lang/Object;
.source "SNBRequestQueue.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ae;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ae;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ae$1;->a:Lcom/xueqiu/android/base/b/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ae$1;->a:Lcom/xueqiu/android/base/b/ae;

    .line 1019
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ae;->e:Lcom/xueqiu/android/base/util/y;

    .line 68
    const-string v1, "API_DOWN"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/util/y;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 69
    return-void
.end method
