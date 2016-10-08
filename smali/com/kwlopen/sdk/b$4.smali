.class final Lcom/kwlopen/sdk/b$4;
.super Ljava/lang/Object;
.source "KwlOpenCordovaPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/b;->a(IILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kwlopen/sdk/b;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/b;I)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/kwlopen/sdk/b$4;->b:Lcom/kwlopen/sdk/b;

    iput p2, p0, Lcom/kwlopen/sdk/b$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/kwlopen/sdk/b$4;->b:Lcom/kwlopen/sdk/b;

    invoke-static {v0}, Lcom/kwlopen/sdk/b;->a(Lcom/kwlopen/sdk/b;)Lorg/apache/cordova/b;

    move-result-object v0

    iget v1, p0, Lcom/kwlopen/sdk/b$4;->a:I

    .line 1142
    new-instance v2, Lorg/apache/cordova/z;

    sget v3, Lorg/apache/cordova/aa;->j:I

    invoke-direct {v2, v3, v1}, Lorg/apache/cordova/z;-><init>(II)V

    invoke-virtual {v0, v2}, Lorg/apache/cordova/b;->a(Lorg/apache/cordova/z;)V

    .line 252
    return-void
.end method
