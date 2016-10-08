.class final Lcom/xueqiu/android/common/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$12;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 280
    check-cast p1, Ljava/lang/Integer;

    .line 1283
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$12;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/common/MainActivity;I)I

    .line 1284
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$12;->a:Lcom/xueqiu/android/common/MainActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$12;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/community/model/Remind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/community/model/Remind;)V

    .line 280
    return-void
.end method
