.class Lcom/flurry/sdk/ij$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ij$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/ij;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ij$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ij$a;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/flurry/sdk/ij$a$2;->a:Lcom/flurry/sdk/ij$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method
