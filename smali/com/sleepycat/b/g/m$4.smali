.class final Lcom/sleepycat/b/g/m$4;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/g/m;->i()[Ljava/io/File;
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/g/m;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/g/m;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/sleepycat/b/g/m$4;->a:Lcom/sleepycat/b/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 902
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
