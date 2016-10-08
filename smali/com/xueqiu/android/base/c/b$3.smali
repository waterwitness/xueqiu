.class final Lcom/xueqiu/android/base/c/b$3;
.super Ljava/lang/Object;
.source "IPManager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/c/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/q;

.field final synthetic b:Lcom/xueqiu/android/base/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/c/b;Lcom/xueqiu/android/base/q;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/xueqiu/android/base/c/b$3;->b:Lcom/xueqiu/android/base/c/b;

    iput-object p2, p0, Lcom/xueqiu/android/base/c/b$3;->a:Lcom/xueqiu/android/base/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$3;->b:Lcom/xueqiu/android/base/c/b;

    iget-object v1, p0, Lcom/xueqiu/android/base/c/b$3;->a:Lcom/xueqiu/android/base/q;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/q;)V

    .line 139
    return-void
.end method
