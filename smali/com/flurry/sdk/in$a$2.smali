.class Lcom/flurry/sdk/in$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/in$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/in;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/in$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/in$a;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/flurry/sdk/in$a$2;->a:Lcom/flurry/sdk/in$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
