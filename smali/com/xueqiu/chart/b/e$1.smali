.class final Lcom/xueqiu/chart/b/e$1;
.super Ljava/lang/Object;
.source "Label.java"

# interfaces
.implements Lcom/xueqiu/chart/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/chart/b/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/chart/b/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/chart/b/e;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xueqiu/chart/b/e$1;->a:Lcom/xueqiu/chart/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.?0*$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
