.class Lcom/flurry/sdk/jf$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jf;->t()Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jf;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/flurry/sdk/jf$3;->a:Lcom/flurry/sdk/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 363
    const-string v0, ".flurryagent."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
