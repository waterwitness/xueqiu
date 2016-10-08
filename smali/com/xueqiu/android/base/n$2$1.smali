.class final Lcom/xueqiu/android/base/n$2$1;
.super Ljava/lang/Object;
.source "SNBAndFixManager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/n$2;->a(Lcom/google/gson/JsonObject;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonObject;

.field final synthetic b:Lcom/xueqiu/android/base/n$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/n$2;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/xueqiu/android/base/n$2$1;->b:Lcom/xueqiu/android/base/n$2;

    iput-object p2, p0, Lcom/xueqiu/android/base/n$2$1;->a:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/base/n$2$1;->b:Lcom/xueqiu/android/base/n$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/n$2;->a:Lcom/xueqiu/android/base/n;

    iget-object v1, p0, Lcom/xueqiu/android/base/n$2$1;->a:Lcom/google/gson/JsonObject;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/n;->b(Lcom/xueqiu/android/base/n;Lcom/google/gson/JsonObject;)V

    .line 191
    return-void
.end method
