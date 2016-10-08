.class public final Lorg/apache/commons/a/a/a/c;
.super Ljava/lang/Object;
.source "TarArchiveSparseEntry.java"


# instance fields
.field final a:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x1f8

    invoke-static {p1, v0}, Lorg/apache/commons/a/a/a/e;->a([BI)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/a/a/a/c;->a:Z

    .line 58
    return-void
.end method
