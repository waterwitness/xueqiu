.class final Lcom/xueqiu/android/base/c/b$4;
.super Ljava/lang/Object;
.source "IPManager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/c/b;->a(Lcom/google/gson/JsonObject;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/c/b;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/xueqiu/android/base/c/b$4;->a:Lcom/xueqiu/android/base/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$4;->a:Lcom/xueqiu/android/base/c/b;

    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/c/b;->refresh(Lcom/xueqiu/android/base/q;)V

    .line 198
    return-void
.end method
