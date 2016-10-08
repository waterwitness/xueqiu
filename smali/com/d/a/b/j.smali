.class final Lcom/d/a/b/j;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"

# interfaces
.implements Lcom/d/a/b/d/b;


# instance fields
.field private final a:Lcom/d/a/b/d/b;


# direct methods
.method public constructor <init>(Lcom/d/a/b/d/b;)V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/d/a/b/j;->a:Lcom/d/a/b/d/b;

    .line 614
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 618
    sget-object v0, Lcom/d/a/b/h$1;->a:[I

    invoke-static {p1}, Lcom/d/a/b/d/c;->a(Ljava/lang/String;)Lcom/d/a/b/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/b/d/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 623
    iget-object v0, p0, Lcom/d/a/b/j;->a:Lcom/d/a/b/d/b;

    invoke-interface {v0, p1, p2}, Lcom/d/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 621
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
