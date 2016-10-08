.class Lcom/flurry/sdk/ld$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ld;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ld;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ld;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/flurry/sdk/ld$1;->a:Lcom/flurry/sdk/ld;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
