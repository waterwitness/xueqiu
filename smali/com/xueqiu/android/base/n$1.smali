.class final Lcom/xueqiu/android/base/n$1;
.super Ljava/lang/Object;
.source "SNBAndFixManager.java"

# interfaces
.implements Lcom/xueqiu/android/base/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/n;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/xueqiu/android/base/n$1;->a:Lcom/xueqiu/android/base/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/base/n$1;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/n;->a(Lcom/xueqiu/android/base/n;Lcom/google/gson/JsonObject;)V

    .line 179
    return-void
.end method
