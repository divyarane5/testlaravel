@extends('front/layout')
@section('page_title','About Us')
@section('container')

<!-- catg header banner section -->
<section id="aa-catg-head-banner">
 <img src="{{asset('front_assets/img/fashion/fashion-header-bg-8.jpg')}}" alt="fashion img">
 <div class="aa-catg-head-banner-area">
   <div class="container">
    <div class="aa-catg-head-banner-content">
      <h2>About Us</h2>
      <ol class="breadcrumb">
        <li><a href="{{url('/')}}">Home</a></li>         
        <li class="active">About Us</li>
      </ol>
    </div>
   </div>
 </div>
</section>
<!-- / catg header banner section -->

<!-- Blog Archive -->
<section id="aa-blog-archive">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="aa-blog-archive-area">
          <div class="row">
            <div class="col-md-12">
              <!-- Blog details -->
              <div class="aa-blog-content aa-blog-details">
                <article class="aa-blog-content-single">                        
                  <h2><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem, praesentium?</a></h2>
                   <div class="aa-article-bottom">
                    <div class="aa-post-author">
                      Posted By <a href="#">Jackson</a>
                    </div>
                    <div class="aa-post-date">
                      March 26th 2016
                    </div>
                  </div>
                  <figure class="aa-blog-img">
                    <a href="#"><img src="{{asset('front_assets/img/fashion-banner.jpg')}}" alt="fashion img"></a>
                  </figure>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates voluptatum accusamus dolorum ipsam adipisci laudantium laborum ipsa excepturi soluta, dolore similique, velit id, rerum repudiandae enim modi! Quo, debitis, in.</p>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, laudantium error nisi, fuga odio sint dignissimos similique maiores nihil amet, impedit atque saepe distinctio, in repudiandae quia. Hic numquam laborum, aliquam eligendi quo inventore aperiam quae error commodi voluptatum dolorum tempore, atque, ratione molestiae, nostrum perferendis. Similique voluptatum error quaerat?</p>
                  <blockquote>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum facere tempora rerum qui illum, repellat adipisci ad suscipit, quis accusamus commodi nemo deserunt optio nobis fugit cumque, delectus repellendus quo.
                  </blockquote>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor omnis ipsam, nisi voluptate reprehenderit consectetur, illum possimus asperiores. Sed ad natus saepe, distinctio veniam? Error natus, dolore rem beatae, dolorum, aliquid sapiente ipsa voluptatum impedit vel maiores nobis totam! Ad dicta obcaecati dolore natus deleniti qui, hic animi, nobis cumque fuga non sapiente neque voluptatum nisi perspiciatis, molestiae vero distinctio officia, laboriosam. Veritatis assumenda nam est fuga rem asperiores repellat veniam magnam, molestias iusto quas facilis, et eaque. Est magni voluptas quibusdam saepe quis laudantium atque maxime itaque optio ipsam qui voluptates beatae, perspiciatis fugiat tempora maiores, odio, sed non!</p>
                  <ul>
                    <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum deserunt earum qui nobis veritatis! Reprehenderit.</li>
                    <li>Rerum nesciunt laboriosam, excepturi, officiis, delectus cum facere aperiam aliquam numquam, modi amet asperiores repudiandae!</li>
                    <li>Dicta recusandae eveniet ducimus rerum, maxime provident suscipit cupiditate natus at necessitatibus, consequuntur iste magnam.</li>
                    <li>Voluptate sunt tempora culpa et veritatis ex quo non tenetur similique blanditiis! Debitis, assumenda, provident.</li>
                    <li>Eligendi sunt ratione praesentium, tempore esse, iure ut dolor consequuntur eum ducimus commodi sequi beatae.</li>
                  </ul>
                  <h1>Heading 1</h1>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias nihil nobis libero magni fuga ratione ipsam ipsa laboriosam quod, reprehenderit, error iusto, delectus eius. Iste.</p>
                  <h2>Heading 2</h2>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias nihil nobis libero magni fuga ratione ipsam ipsa laboriosam quod, reprehenderit, error iusto, delectus eius. Iste.</p>
                  <h3>Heading 3</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est asperiores voluptatem officia, nulla, nihil tempore illum esse sunt in quos!</p>
                  <h4>Heading 4</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus odit nostrum magnam, quas quos id!</p>
                </article>
              </div>
            </div>

          </div>           
        </div>
      </div>
    </div>
  </div>
</section>
<!-- / Blog Archive -->    
@endsection