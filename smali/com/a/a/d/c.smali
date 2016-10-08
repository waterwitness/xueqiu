.class public interface abstract Lcom/a/a/d/c;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/a/a/d/c;->a:I

    return-void
.end method
