.class final Lcom/xueqiu/android/base/n$2;
.super Ljava/lang/Object;
.source "SNBAndFixManager.java"

# interfaces
.implements Lcom/xueqiu/android/base/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/n;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/n;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/xueqiu/android/base/n$2;->a:Lcom/xueqiu/android/base/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;)V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/n$2$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/base/n$2$1;-><init>(Lcom/xueqiu/android/base/n$2;Lcom/google/gson/JsonObject;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 193
    return-void
.end method
